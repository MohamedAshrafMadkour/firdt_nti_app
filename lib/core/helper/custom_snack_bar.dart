import 'package:flutter/material.dart';
import 'package:main_app/core/constants/app_colors.dart';

customSnackBar(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: const Row(
        children: [
          Icon(Icons.warning_amber_rounded, color: Colors.white),
          SizedBox(width: 10),
          Text(
            'Please choose your gender',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
      backgroundColor: AppColors.redColorF5,
      behavior: SnackBarBehavior.floating,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      duration: const Duration(seconds: 2),
      elevation: 6,
    ),
  );
}
