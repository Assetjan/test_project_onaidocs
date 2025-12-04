import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:test_task_onaidocs/src/core/service/injectable/injectable_service.dart';
import 'package:test_task_onaidocs/src/core/theme/colors.dart';
import 'package:test_task_onaidocs/src/core/theme/text_styles.dart';
import 'package:test_task_onaidocs/src/features/tasks/domain/entities/task_entity.dart';
import '../../../../core/widgets/app_loader.dart';
import '../../../../core/router/router_paths.dart';
import '../bloc/tasks_page_bloc.dart';

part '../widgets/tasks_search_field.dart';
part '../widgets/task_card.dart';

class TasksPage extends StatefulWidget {
  const TasksPage({super.key});

  @override
  State<TasksPage> createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage> {
  late final TasksPageBloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = getIt<TasksPageBloc>()..add(const TasksPageEvent.started());
  }

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TasksPageBloc, TasksPageState>(
      bloc: _bloc,
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.background,
          appBar: AppBar(
            backgroundColor: AppColors.surface,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_new,
                size: 20,
                color: AppColors.textPrimary,
              ),
              onPressed: () => context.push(RoutePaths.home),
            ),
            actions: [
              IconButton(
                onPressed: () => context.push(RoutePaths.taskEdit),
                icon: const Icon(Icons.add),
              ),
            ],
            centerTitle: true,
            title: Text(
              'Задачи',
              style: AppTextStyles.body.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Column(
              children: [
                TasksSearchField(
                  onChanged: (value) {
                    _bloc.add(TasksPageEvent.queryChanged(value));
                  },
                ),
                const SizedBox(height: 16),
                Expanded(
                  child: state.map(
                    loading: (_) => const AppLoader(),
                    error: (s) => Center(child: Text(s.message)),
                    loaded: (s) {
                      final tasks = s.viewModel.filteredTasks;
                      if (tasks.isEmpty) {
                        return const Center(child: Text('Задач пока нет'));
                      }
                      return ListView.separated(
                        itemCount: tasks.length,
                        separatorBuilder: (_, __) => const SizedBox(height: 8),
                        itemBuilder: (context, index) {
                          final task = tasks[index];
                          return TaskCard(
                            task: task,
                            onTap: () => context.push(
                              '${RoutePaths.taskDetail}/${task.id}',
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
