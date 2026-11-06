import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class CalculatorDisplay extends StatefulWidget {
  const CalculatorDisplay({super.key});

  @override
  State<CalculatorDisplay> createState() => _CalculatorDisplayState();
}

class _CalculatorDisplayState extends State<CalculatorDisplay> {
  late final TextEditingController _expressionController;
  late final TextEditingController _resultController;

  @override
  void initState() {
    super.initState();
    _expressionController = TextEditingController(text: '0');
    _resultController = TextEditingController(text: '0');
  }

  @override
  void dispose() {
    _expressionController.dispose();
    _resultController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: AppColors.display,
        borderRadius: BorderRadius.all(Radius.circular(22)),
      ),
      child: Column(
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.bottomRight,
              child: TextField(
                key: const Key('expressionField'),
                controller: _expressionController,
                readOnly: true,
                textAlign: TextAlign.right,
                style: const TextStyle(
                  fontSize: 20,
                  color: AppColors.secondaryText,
                ),
                decoration: const InputDecoration(border: InputBorder.none),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Align(
              alignment: Alignment.centerRight,
              child: TextField(
                key: const Key('resultField'),
                controller: _resultController,
                readOnly: true,
                textAlign: TextAlign.right,
                style: const TextStyle(
                  fontSize: 44,
                  color: AppColors.primaryText,
                ),
                decoration: const InputDecoration(border: InputBorder.none),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
