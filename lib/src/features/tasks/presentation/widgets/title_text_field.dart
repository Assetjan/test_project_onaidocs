part of 'package:test_task_onaidocs/src/features/tasks/presentation/pages/task_edit_page.dart';

class TitleTextField extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController controller;

  const TitleTextField({required this.formKey, required this.controller});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<TextEditingValue>(
      valueListenable: controller,
      builder: (context, value, _) {
        return TextFormField(
          controller: controller,
          decoration: InputDecoration(
            isCollapsed: true,
            contentPadding: const EdgeInsets.symmetric(vertical: 8),
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            suffixIcon: value.text.isEmpty
                ? null
                : IconButton(
                    padding: EdgeInsets.zero,
                    icon: Assets.icons.carbonCloseFilled.svg(
                      width: 18,
                      height: 18,
                    ),
                    onPressed: () {
                      controller.clear();
                      formKey.currentState?.validate();
                    },
                  ),
          ),
          style: AppTextStyles.body,
          validator: (v) =>
              v != null && v.trim().isNotEmpty ? null : 'Обязательное поле',
        );
      },
    );
  }
}
