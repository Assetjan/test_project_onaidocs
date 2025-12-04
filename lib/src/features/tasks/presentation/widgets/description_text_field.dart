part of 'package:test_task_onaidocs/src/features/tasks/presentation/pages/task_edit_page.dart';

class DescriptionTextField extends StatefulWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController controller;
  final bool canCollapse;

  const DescriptionTextField({
    required this.formKey,
    required this.controller,
    required this.canCollapse,
  });

  @override
  State<DescriptionTextField> createState() => _DescriptionTextFieldState();
}

class _DescriptionTextFieldState extends State<DescriptionTextField> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<TextEditingValue>(
      valueListenable: widget.controller,
      builder: (context, value, _) {
        final text = value.text.trim();
        final isLong = text.length > 140;

        if (widget.canCollapse && !_expanded && isLong) {
          const threshold = 140;
          final shortText = text.substring(0, threshold).trimRight();

          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    setState(() {
                      _expanded = true;
                    });
                  },
                  child: RichText(
                    text: TextSpan(
                      style: AppTextStyles.body,
                      children: [
                        TextSpan(text: '$shortText '),
                        TextSpan(
                          text: 'Развернуть',
                          style: AppTextStyles.body.copyWith(
                            color: AppColors.primary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              IconButton(
                padding: EdgeInsets.zero,
                icon: Assets.icons.carbonCloseFilled.svg(width: 18, height: 18),
                onPressed: () {
                  widget.controller.clear();
                  widget.formKey.currentState?.validate();
                },
              ),
            ],
          );
        }

        final t = text;

        return TextFormField(
          controller: widget.controller,
          minLines: 4,
          maxLines: null,
          decoration: InputDecoration(
            isCollapsed: true,
            contentPadding: const EdgeInsets.symmetric(vertical: 8),
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            suffixIcon: t.isEmpty
                ? null
                : IconButton(
                    padding: EdgeInsets.zero,
                    icon: Assets.icons.carbonCloseFilled.svg(
                      width: 18,
                      height: 18,
                    ),
                    onPressed: () {
                      widget.controller.clear();
                      widget.formKey.currentState?.validate();
                    },
                  ),
          ),
          style: AppTextStyles.body,
          validator: (v) {
            final value = v?.trim() ?? '';
            if (value.isEmpty) {
              return 'Обязательное поле';
            }
            if (value.length < 100) {
              return 'Минимум 100 символов';
            }
            return null;
          },
        );
      },
    );
  }
}
