import 'package:ex02/theme/app_colors.dart';
import 'package:flutter/material.dart';

import 'widgets/calculator_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: AppColors.display,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.display,
          foregroundColor: AppColors.primaryText,
        ),
      ),
      title: 'ex02',
      home: const CalculatorPage(),
    );
  }
}
