import 'package:flutter/material.dart';
import 'package:main_app/core/constants/app_colors.dart';
import 'package:main_app/core/utils/app_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({required this.title, super.key, this.onPressed});
  final String title;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 70,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.greenColor65,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25)),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: AppStyle.textSemiBold32(
            context,
          ).copyWith(color: AppColors.whiteColor),
        ),
      ),
    );
  }
}
