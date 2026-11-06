import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class CalculatorKeypad extends StatelessWidget {
  const CalculatorKeypad({super.key, this.onButtonPressed});

  final ValueChanged<String>? onButtonPressed;

  static const List<String> _buttons = [
    'AC',
    'C',
    '%',
    '/',
    '7',
    '8',
    '9',
    '*',
    '4',
    '5',
    '6',
    '-',
    '1',
    '2',
    '3',
    '+',
    '±',
    '0',
    '.',
    '=',
  ];

  Color _buttonColor(String label) {
    if (label == '=') return AppColors.equalsButton;
    if (const {'+', '-', '*', '/'}.contains(label)) {
      return AppColors.operatorButton;
    }
    if (const {'AC', 'C', '%', '±'}.contains(label)) {
      return AppColors.utilityButton;
    }
    return AppColors.numberButton;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        const padding = 15.0;
        const spacing = 10.0;
        const columnCount = 4;
        const rowCount = 5;
        final buttonWidth =
            (constraints.maxWidth - (padding * 2) - (spacing * 3)) /
            columnCount;
        final buttonHeight =
            (constraints.maxHeight - (padding * 2) - (spacing * 4)) / rowCount;
        final aspectRatio = buttonHeight > 0 ? buttonWidth / buttonHeight : 1.2;

        return GridView.builder(
          padding: const EdgeInsets.all(padding),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: columnCount,
            crossAxisSpacing: spacing,
            mainAxisSpacing: spacing,
            childAspectRatio: aspectRatio,
          ),
          itemCount: _buttons.length,
          itemBuilder: (context, index) {
            final label = _buttons[index];
            return ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: _buttonColor(label),
                foregroundColor: AppColors.primaryText,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () {
                debugPrint(label);
                onButtonPressed?.call(label);
              },
              child: Text(label, style: const TextStyle(fontSize: 22)),
            );
          },
        );
      },
    );
  }
}
