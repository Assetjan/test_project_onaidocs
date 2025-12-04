part of 'package:test_task_onaidocs/src/features/tasks/presentation/pages/tasks_page.dart';


class TasksSearchField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const TasksSearchField({required this.onChanged, super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.surface,
        hintText: 'Нажмите, для начала поиска',
        hintStyle: AppTextStyles.hint,
        prefixIcon: const Icon(
          Icons.search,
          color: AppColors.textSecondary,
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
      style: AppTextStyles.body,
    );
  }
}
