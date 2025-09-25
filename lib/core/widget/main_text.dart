import 'package:flutter/material.dart';
import 'package:main_app/core/constants/app_colors.dart';
import 'package:main_app/core/utils/app_style.dart';

class MainText extends StatelessWidget {
  const MainText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'BMI',
            style: AppStyle.textSemiBold32(
              context,
            ).copyWith(color: AppColors.amberColorFB),
          ),
          TextSpan(
            text: ' Calculator',
            style: AppStyle.textSemiBold32(
              context,
            ).copyWith(color: AppColors.greenColor65),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
