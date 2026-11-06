import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class CalculatorAppBar extends AppBar {
  CalculatorAppBar({super.key})
    : super(
        centerTitle: true,
        backgroundColor: AppColors.display,
        elevation: 0,
        title: const Text(
          'Calculator',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: AppColors.primaryText,
          ),
        ),
        automaticallyImplyLeading: false,
      );
}
