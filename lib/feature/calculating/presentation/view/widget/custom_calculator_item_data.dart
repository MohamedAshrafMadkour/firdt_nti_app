import 'package:flutter/material.dart';
import 'package:main_app/core/constants/app_colors.dart';
import 'package:main_app/core/utils/app_style.dart';
import 'package:main_app/feature/calculating/presentation/view/widget/custom_count.dart';

class CustomCalculatorWeightItemData extends StatefulWidget {
  const CustomCalculatorWeightItemData({
    required this.title,

    required this.onValueChanged,
    super.key,
  });
  final String title;
  final ValueChanged<int> onValueChanged;

  @override
  State<CustomCalculatorWeightItemData> createState() =>
      _CustomCalculatorWeightItemDataState();
}

class _CustomCalculatorWeightItemDataState
    extends State<CustomCalculatorWeightItemData> {
  int weightCount = 40;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          widget.title,
          textAlign: TextAlign.center,
          style: AppStyle.textMedium16(
            context,
          ).copyWith(color: AppColors.greyColorAB),
        ),
        const SizedBox(height: 15),
        Text(
          '$weightCount',
          textAlign: TextAlign.center,
          style: AppStyle.textBold48(
            context,
          ).copyWith(color: AppColors.amberColorCE),
        ),
        const SizedBox(height: 15),
        Row(
          children: [
            CustomCount(
              icon: Icons.remove_outlined,
              onTap: () {
                setState(() {
                  weightCount--;
                  widget.onValueChanged(weightCount);
                });
              },
            ),
            const SizedBox(width: 30),
            CustomCount(
              icon: Icons.add_outlined,
              onTap: () {
                setState(() {
                  weightCount++;
                  widget.onValueChanged(weightCount);
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}

class CustomCalculatorAgeItemData extends StatefulWidget {
  const CustomCalculatorAgeItemData({
    required this.title,

    required this.onValueChanged,
    super.key,
  });
  final String title;
  final ValueChanged<int> onValueChanged;

  @override
  State<CustomCalculatorAgeItemData> createState() =>
      _CustomCalculatorAgeItemDataState();
}

class _CustomCalculatorAgeItemDataState
    extends State<CustomCalculatorAgeItemData> {
  int ageCount = 18;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          widget.title,
          textAlign: TextAlign.center,
          style: AppStyle.textMedium16(
            context,
          ).copyWith(color: AppColors.greyColorAB),
        ),
        const SizedBox(height: 15),
        Text(
          '$ageCount',
          textAlign: TextAlign.center,
          style: AppStyle.textBold48(
            context,
          ).copyWith(color: AppColors.amberColorCE),
        ),
        const SizedBox(height: 15),
        Row(
          children: [
            CustomCount(
              icon: Icons.remove_outlined,
              onTap: () {
                setState(() {
                  ageCount--;
                  widget.onValueChanged(ageCount);
                });
              },
            ),
            const SizedBox(width: 30),
            CustomCount(
              icon: Icons.add_outlined,
              onTap: () {
                setState(() {
                  ageCount++;
                  widget.onValueChanged(ageCount);
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}
