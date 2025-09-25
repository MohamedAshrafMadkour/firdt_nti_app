import 'package:flutter/material.dart';
import 'package:main_app/core/constants/app_colors.dart';
import 'package:main_app/core/utils/app_style.dart';

class CustomDetailsItem extends StatelessWidget {
  const CustomDetailsItem({
    required this.title,
    required this.value,
    super.key,
  });
  final String title;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,

      children: [
        Text(
          value,
          textAlign: TextAlign.center,
          style: AppStyle.textSemiBold20(
            context,
          ).copyWith(color: AppColors.greenColor51),
        ),
        const SizedBox(height: 5),
        Text(
          title,
          textAlign: TextAlign.center,
          style: AppStyle.textSemiBold14(
            context,
          ).copyWith(color: AppColors.greyColorAB),
        ),
      ],
    );
  }
}
