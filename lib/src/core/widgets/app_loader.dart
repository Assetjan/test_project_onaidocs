import 'package:flutter/material.dart';
import 'package:test_task_onaidocs/src/core/theme/colors.dart';

class AppLoader extends StatelessWidget {
  const AppLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(color: AppColors.primary,),
    );
  }
}
