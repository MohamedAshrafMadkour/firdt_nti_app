import 'package:flutter/material.dart';
import 'package:main_app/core/constants/app_colors.dart';

class CustomCount extends StatelessWidget {
  const CustomCount({required this.icon, super.key, this.onTap});
  final void Function()? onTap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 40,
        height: 40,
        decoration: const ShapeDecoration(
          color: Colors.white,
          shape: OvalBorder(),
        ),
        child: Icon(
          icon,
          color: AppColors.amberColorCE,
          fontWeight: FontWeight.w900,
          size: 30,
        ),
      ),
    );
  }
}
