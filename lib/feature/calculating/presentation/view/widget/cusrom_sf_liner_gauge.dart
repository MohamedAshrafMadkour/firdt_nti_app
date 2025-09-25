import 'package:flutter/material.dart';
import 'package:main_app/core/constants/app_colors.dart';
import 'package:main_app/feature/calculating/data/model/count_kg_model.dart';
import 'package:main_app/feature/calculating/presentation/view/widget/custom_cahrt_text.dart';

class CustomChart extends StatelessWidget {
  const CustomChart({required this.countKgModel, super.key});

  final CountKgModel countKgModel;

  @override
  Widget build(BuildContext context) {
    final double minValue = 10;
    final double maxValue = 40;
    final int steps = 35;
    final double stepValue = (maxValue - minValue) / steps;
    final bmi = countKgModel.calculateBmi().clamp(
      minValue.toInt(),
      maxValue.toInt(),
    );
    final normalized = (bmi - minValue) / (maxValue - minValue);
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.1,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: List.generate(steps, (index) {
                Color color;
                final double value = minValue + index * stepValue;
                if (value < 16) {
                  color = AppColors.blueColor84;
                } else if (value < 25) {
                  color = AppColors.greenColor65;
                } else if (value < 30) {
                  color = AppColors.amberColorFF;
                } else {
                  color = AppColors.redColorF5;
                }
                return Padding(
                  padding: const EdgeInsets.only(right: 2),
                  child: Container(
                    width: 6,
                    height: 25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: color,
                    ),
                  ),
                );
              }),
            ),
          ),
          AnimatedAlign(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            alignment: Alignment(-1.0 + 2 * normalized, 1.0),
            child: CustomChartText(countKgModel: countKgModel),
          ),
        ],
      ),
    );
  }
}
