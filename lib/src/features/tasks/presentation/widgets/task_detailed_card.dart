part of 'package:test_task_onaidocs/src/features/tasks/presentation/pages/task_detail_page.dart';

class TaskDetailCard extends StatelessWidget {
  final TaskEntity task;
  final String priorityLabel;
  final bool expanded;
  final VoidCallback onExpand;

  const TaskDetailCard({
    required this.task,
    required this.priorityLabel,
    required this.expanded,
    required this.onExpand,
  });

  @override
  Widget build(BuildContext context) {
    final description = task.description ?? '';
    const threshold = 140;
    final isLong = description.length > threshold;
    final shortText = isLong
        ? '${description.substring(0, threshold).trimRight()}'
        : description;

    final descriptionWidget = !isLong || expanded
        ? Text(description, style: AppTextStyles.body)
        : RichText(
            text: TextSpan(
              style: AppTextStyles.body,
              children: [
                TextSpan(text: '$shortText '),
                TextSpan(
                  text: 'Развернуть',
                  style: AppTextStyles.body.copyWith(color: AppColors.primary),
                  recognizer: TapGestureRecognizer()..onTap = onExpand,
                ),
              ],
            ),
          );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text('Приоритет', style: AppTextStyles.hint),
            const SizedBox(width: 32),
            Text(priorityLabel, style: AppTextStyles.body),
          ],
        ),
        const SizedBox(height: 8),
        Divider(color: AppColors.border, height: 1),
        const SizedBox(height: 12),
        Text('Наименование', style: AppTextStyles.hint),
        const SizedBox(height: 4),
        Text(task.title, style: AppTextStyles.body),
        const SizedBox(height: 8),
        Divider(color: AppColors.border, height: 1),
        const SizedBox(height: 12),
        Text('Содержание', style: AppTextStyles.hint),
        const SizedBox(height: 4),
        descriptionWidget,
        const SizedBox(height: 8),

        Divider(color: AppColors.border, height: 1),
      ],
    );
  }
}
