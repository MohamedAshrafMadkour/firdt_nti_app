import 'package:flutter/material.dart';
import 'package:main_app/feature/calculating/presentation/view/widget/custom_calculator_item.dart';
import 'package:main_app/feature/calculating/presentation/view/widget/custom_calculator_item_data.dart';

class CustomItemsRow extends StatelessWidget {
  const CustomItemsRow({
    required this.onAgesValueChanged,
    required this.onWeightValueChanged,
    super.key,
  });
  final ValueChanged<int> onAgesValueChanged;
  final ValueChanged<int> onWeightValueChanged;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomCalculatorItem(
          child: CustomCalculatorWeightItemData(
            title: 'Weight (kg)',
            onValueChanged: onWeightValueChanged,
          ),
        ),

        CustomCalculatorItem(
          child: CustomCalculatorAgeItemData(
            title: 'Age',
            onValueChanged: onAgesValueChanged,
          ),
        ),
      ],
    );
  }
}
