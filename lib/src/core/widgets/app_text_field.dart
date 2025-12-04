// lib/src/core/widgets/app_input_field.dart
import 'package:flutter/material.dart';
import 'package:test_task_onaidocs/gen/assets.gen.dart';
import '../theme/text_styles.dart';
import '../theme/colors.dart';

class AppTextField extends StatelessWidget {
  final GlobalKey<FormState>? formKey;
  final TextEditingController controller;
  final String label;
  final bool isRequired;
  final bool obscureText;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final bool showClear;

  const AppTextField({
    super.key,
    this.formKey,
    required this.controller,
    required this.label,
    this.isRequired = false,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.validator,
    this.showClear = false,
  });

  @override
  Widget build(BuildContext context) {
    final baseBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide.none,
    );

    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.surface,
        label: RichText(
          text: TextSpan(
            text: label,
            style: AppTextStyles.hint,
            children: isRequired
                ? [
                    TextSpan(
                      text: '*',
                      style: AppTextStyles.hint.copyWith(color: AppColors.red),
                    ),
                  ]
                : const [],
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
        border: baseBorder,
        enabledBorder: baseBorder,
        focusedBorder: baseBorder.copyWith(
          borderSide: const BorderSide(color: AppColors.primary, width: 1),
        ),
        suffixIcon: showClear
            ? ValueListenableBuilder<TextEditingValue>(
                valueListenable: controller,
                builder: (context, value, _) {
                  if (value.text.isEmpty) {
                    return const SizedBox.shrink();
                  }
                  return IconButton(
                    icon: Assets.icons.carbonCloseFilled.svg(
                      width: 18,
                      height: 18,
                    ),
                    onPressed: () {
                      controller.clear();
                      formKey?.currentState?.validate();
                    },
                  );
                },
              )
            : null,
      ),
      style: AppTextStyles.body,
      validator: validator,
      onChanged: (_) {
        formKey?.currentState?.validate();
      },
    );
  }
}
