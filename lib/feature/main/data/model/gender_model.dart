import 'package:flutter/material.dart';
import 'package:main_app/core/constants/app_colors.dart';
import 'package:main_app/core/constants/app_images.dart';

class GenderModel {
  final String title, image;
  final Color textColor, backgroundColor;

  GenderModel({
    required this.title,
    required this.image,
    required this.textColor,
    required this.backgroundColor,
  });
}

List<GenderModel> genderList = [
  GenderModel(
    title: 'Male',
    image: AppImages.imagesMale,
    textColor: AppColors.greenColor51,
    backgroundColor: AppColors.whiteColorEF,
  ),
  GenderModel(
    title: 'Female',
    image: AppImages.imagesFemale,
    textColor: AppColors.amberColorCE,
    backgroundColor: const Color(0xFFFBF6EE),
  ),
];
