import 'package:flutter/material.dart';

import 'app_bar.dart';
import 'calculator_display.dart';
import 'calculator_keypad.dart';

class CalculatorPage extends StatelessWidget {
  const CalculatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CalculatorAppBar(),
      body: const SafeArea(
        child: Column(
          children: [
            Expanded(child: CalculatorDisplay()),
            Expanded(flex: 2, child: CalculatorKeypad()),
          ],
        ),
      ),
    );
  }
}
