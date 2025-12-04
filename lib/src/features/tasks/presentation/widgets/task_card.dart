part of 'package:test_task_onaidocs/src/features/tasks/presentation/pages/tasks_page.dart';

class TaskCard extends StatelessWidget {
  final TaskEntity task;
  final VoidCallback onTap;
  const TaskCard({required this.task, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    String priorityLabel;
    Color priorityColor;
    switch (task.priority) {
      case TaskPriority.low:
        priorityLabel = 'Низкий';
        priorityColor = AppColors.primary;
        break;
      case TaskPriority.medium:
        priorityLabel = 'Средний';
        priorityColor = AppColors.warning;
        break;
      case TaskPriority.high:
        priorityLabel = 'Высокий';
        priorityColor = AppColors.red;
        break;
    }

    final createdAt = task.createdAt;
    final dateText =
        '${createdAt.day.toString().padLeft(2, '0')}.${createdAt.month.toString().padLeft(2, '0')}.${createdAt.year}';

    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.surface,
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    task.title,
                    style: AppTextStyles.h2.copyWith(fontSize: 16),
                  ),
                ),
                const SizedBox(width: 8),
                Text(task.id, style: AppTextStyles.hint),
              ],
            ),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: priorityColor.withOpacity(0.12),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                priorityLabel,
                style: AppTextStyles.body.copyWith(
                  fontSize: 12,
                  color: priorityColor,
                ),
              ),
            ),
            const SizedBox(height: 8),
            if (task.description != null && task.description!.isNotEmpty)
              Text(
                task.description!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyles.body.copyWith(
                  color: AppColors.textSecondary,
                ),
              ),
            const SizedBox(height: 12),
            Container(height: 1, color: AppColors.border),
            const SizedBox(height: 8),

            Text('Дата создания: $dateText', style: AppTextStyles.hint),
          ],
        ),
      ),
    );
  }
}
