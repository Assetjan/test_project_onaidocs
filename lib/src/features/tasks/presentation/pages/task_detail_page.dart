import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:test_task_onaidocs/src/core/router/router_paths.dart';
import 'package:test_task_onaidocs/src/core/service/injectable/injectable_service.dart';
import 'package:test_task_onaidocs/src/core/theme/colors.dart';
import 'package:test_task_onaidocs/src/core/theme/text_styles.dart';
import 'package:test_task_onaidocs/src/core/widgets/app_button.dart';
import '../bloc/tasks_page_bloc.dart';
import '../../domain/entities/task_entity.dart';

part '../widgets/task_detailed_card.dart';

class TaskDetailPage extends StatefulWidget {
  final String taskId;
  const TaskDetailPage({required this.taskId, super.key});

  @override
  State<TaskDetailPage> createState() => _TaskDetailPageState();
}

class _TaskDetailPageState extends State<TaskDetailPage> {
  late final TasksPageBloc _bloc;
  bool _expanded = false;

  @override
  void initState() {
    super.initState();
    _bloc = getIt<TasksPageBloc>();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TasksPageBloc, TasksPageState>(
      bloc: _bloc,
      builder: (context, state) {
        return state.map(
          loading: (_) {
            return const Scaffold(
              body: Center(child: CircularProgressIndicator()),
            );
          },
          error: (s) {
            return Scaffold(
              backgroundColor: AppColors.background,
              appBar: AppBar(
                backgroundColor: AppColors.surface,
                elevation: 0,
                leading: IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                    size: 20,
                    color: AppColors.textPrimary,
                  ),
                  onPressed: () => context.pop(),
                ),
                centerTitle: true,
                title: Text(
                  'Задача',
                  style: AppTextStyles.body.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              body: Center(child: Text(s.message, style: AppTextStyles.body)),
            );
          },
          loaded: (s) {
            final tasks = s.viewModel.tasks;
            final matching = tasks.where((t) => t.id == widget.taskId).toList();
            if (matching.isEmpty) {
              return Scaffold(
                backgroundColor: AppColors.background,
                appBar: AppBar(
                  backgroundColor: AppColors.surface,
                  elevation: 0,
                  leading: IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios_new,
                      size: 20,
                      color: AppColors.textPrimary,
                    ),
                    onPressed: () => context.pop(),
                  ),
                  centerTitle: true,
                  title: Text(
                    'Задача',
                    style: AppTextStyles.body.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                body: const Center(child: Text('Задача не найдена')),
              );
            }

            final TaskEntity task = matching.first;

            String priorityLabel;
            switch (task.priority) {
              case TaskPriority.low:
                priorityLabel = 'Низкий';
                break;
              case TaskPriority.medium:
                priorityLabel = 'Средний';
                break;
              case TaskPriority.high:
                priorityLabel = 'Высокий';
                break;
            }

            return Scaffold(
              backgroundColor: AppColors.background,
              appBar: AppBar(
                backgroundColor: AppColors.surface,
                elevation: 0,
                leading: IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                    size: 20,
                    color: AppColors.textPrimary,
                  ),
                  onPressed: () => context.pop(),
                ),
                centerTitle: true,
                title: Text(
                  'Задача: ${task.id}',
                  style: AppTextStyles.body.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              body: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: AppColors.surface,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        padding: const EdgeInsets.all(16),
                        child: TaskDetailCard(
                          task: task,
                          priorityLabel: priorityLabel,
                          expanded: _expanded,
                          onExpand: () {
                            setState(() {
                              _expanded = true;
                            });
                          },
                        ),
                      ),
                      const Spacer(),
                      AppButton(
                        text: 'Редактировать',
                        onPressed: () async {
                          await context.push(RoutePaths.taskEdit, extra: task);
                          if (!mounted) return;
                          setState(() {
                            _expanded = false;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
