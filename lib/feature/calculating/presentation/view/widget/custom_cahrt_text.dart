import 'package:flutter/material.dart';
import 'package:main_app/core/constants/app_colors.dart';
import 'package:main_app/core/utils/app_style.dart';
import 'package:main_app/feature/calculating/data/model/count_kg_model.dart';

class CustomChartText extends StatelessWidget {
  const CustomChartText({required this.countKgModel, super.key});
  final CountKgModel countKgModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      height: 60,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
            decoration: ShapeDecoration(
              color: const Color(0xFF78B060),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            child: Text(
              countKgModel.getBmiCategory(bmi: countKgModel.calculateBmi()),
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: AppStyle.textSemiBold12(
                context,
              ).copyWith(color: AppColors.whiteColor),
            ),
          ),
          Transform.translate(
            offset: const Offset(0, -13),
            child: const Icon(
              Icons.arrow_drop_down,
              size: 30,
              color: Color(0xFF78B060),
            ),
          ),
        ],
      ),
    );
  }
}
