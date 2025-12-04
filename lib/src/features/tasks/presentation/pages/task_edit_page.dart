
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:uuid/uuid.dart';
import 'package:test_task_onaidocs/gen/assets.gen.dart';
import 'package:test_task_onaidocs/src/core/router/router_paths.dart';
import 'package:test_task_onaidocs/src/core/theme/colors.dart';
import 'package:test_task_onaidocs/src/core/theme/text_styles.dart';
import 'package:test_task_onaidocs/src/core/widgets/app_button.dart';
import '../../domain/entities/task_entity.dart';
import '../bloc/tasks_page_bloc.dart';

part 'package:test_task_onaidocs/src/features/tasks/presentation/widgets/priority_chip.dart';
part 'package:test_task_onaidocs/src/features/tasks/presentation/widgets/description_text_field.dart';
part 'package:test_task_onaidocs/src/features/tasks/presentation/widgets/title_text_field.dart';

class TaskEditPage extends StatefulWidget {
  final TaskEntity? task;
  const TaskEditPage({this.task, super.key});

  @override
  State<TaskEditPage> createState() => _TaskEditPageState();
}

class _TaskEditPageState extends State<TaskEditPage> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  TaskPriority _priority = TaskPriority.medium;
  TaskEntity? _existing;

  @override
  void initState() {
    super.initState();
    final task = widget.task;
    if (task != null) {
      _existing = task;
      _titleController.text = task.title;
      _descriptionController.text = task.description ?? '';
      _priority = task.priority;
    }
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final tasksBloc = context.read<TasksPageBloc>();
    final isEdit = _existing != null;

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.surface,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.close, color: AppColors.textPrimary),
          onPressed: () => context.pop(),
        ),
        titleSpacing: 0,
        centerTitle: false,
        title: Text(
          isEdit ? 'Редактирование задачи' : 'Создание задачи',
          style: AppTextStyles.body.copyWith(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Данные задачи',
                    style: AppTextStyles.h2.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.surface,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _fieldLabel('Приоритет'),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              PriorityChip(
                                label: 'Низкий',
                                value: TaskPriority.low,
                                groupValue: _priority,
                                onSelected: (v) {
                                  setState(() {
                                    _priority = v;
                                  });
                                },
                              ),
                              const SizedBox(width: 8),
                              PriorityChip(
                                label: 'Средний',
                                value: TaskPriority.medium,
                                groupValue: _priority,
                                onSelected: (v) {
                                  setState(() {
                                    _priority = v;
                                  });
                                },
                              ),
                              const SizedBox(width: 8),
                              PriorityChip(
                                label: 'Высокий',
                                value: TaskPriority.high,
                                groupValue: _priority,
                                onSelected: (v) {
                                  setState(() {
                                    _priority = v;
                                  });
                                },
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          _fieldLabel('Наименование'),
                          const SizedBox(height: 4),
                          TitleTextField(
                            formKey: _formKey,
                            controller: _titleController,
                          ),
                          Divider(color: AppColors.border, height: 1),
                          const SizedBox(height: 8),
                          _fieldLabel('Содержание'),
                          const SizedBox(height: 4),
                          DescriptionTextField(
                            formKey: _formKey,
                            controller: _descriptionController,
                            canCollapse: isEdit,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              AppButton(
                text: isEdit ? 'Сохранить' : 'Создать',
                onPressed: () async {
                  if (!(_formKey.currentState?.validate() ?? false)) {
                    return;
                  }

                  final now = DateTime.now();

                  final base =
                      _existing ??
                      TaskEntity(
                        id: generateTaskId(),
                        title: _titleController.text.trim(),
                        description: _descriptionController.text.trim(),
                        priority: _priority,
                        createdAt: now,
                      );

                  final updated = base.copyWith(
                    title: _titleController.text.trim(),
                    description: _descriptionController.text.trim(),
                    priority: _priority,
                  );

                  tasksBloc.add(TasksPageEvent.taskSaved(updated));

                  if (mounted) {
                    context.pushReplacement(RoutePaths.tasks);
                  }
                },
              ),
              const SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _fieldLabel(String text) {
  return RichText(
    text: TextSpan(
      text: text,
      style: AppTextStyles.hint,
      children: [
        TextSpan(
          text: '*',
          style: AppTextStyles.hint.copyWith(color: AppColors.red),
        ),
      ],
    ),
  );
}

String generateTaskId() {
  final id = const Uuid().v4();
  final hex = id.replaceAll('-', '');
  final tail = hex.substring(hex.length - 6);
  final number = int.parse(tail, radix: 16) % 1000000;
  final last = number.toString().padLeft(6, '0');
  return 'TK-001-$last';
}
