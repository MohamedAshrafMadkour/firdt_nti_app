import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:main_app/core/constants/app_colors.dart';
import 'package:main_app/core/constants/app_images.dart';
import 'package:main_app/core/helper/show_calculate_result.dart';
import 'package:main_app/core/utils/app_style.dart';
import 'package:main_app/core/widget/custom_button.dart';
import 'package:main_app/core/widget/main_text.dart';
import 'package:main_app/feature/calculating/data/model/count_kg_model.dart';
import 'package:main_app/feature/calculating/presentation/view/widget/custom_calculate_item_picker.dart';
import 'package:main_app/feature/calculating/presentation/view/widget/custom_items_row.dart';
import 'package:svg_flutter/svg.dart';

class CalculateViewBody extends StatefulWidget {
  const CalculateViewBody({required this.gender, super.key});
  final String gender;
  @override
  State<CalculateViewBody> createState() => _CalculateViewBodyState();
}

class _CalculateViewBodyState extends State<CalculateViewBody> {
  int ageCount = 18;
  int weightCount = 40;
  int height = 150;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          const SizedBox(height: 24),
          Row(
            children: [
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Padding(
                  padding: const EdgeInsets.only(left: 13),
                  child: SvgPicture.asset(AppImages.imagesArrowBackIos),
                ),
              ),
              const SizedBox(width: 42),
              const MainText(),
            ],
          ),

          const SizedBox(height: 40),
          Text(
            'Please Modify the values',
            textAlign: TextAlign.center,
            style: AppStyle.textMedium24(
              context,
            ).copyWith(color: AppColors.blackColor0A),
          ),
          const SizedBox(height: 30),
          CustomItemsRow(
            onAgesValueChanged: (value) {
              setState(() {
                ageCount = value;
                log('ageCount: $ageCount');
              });
            },
            onWeightValueChanged: (value) {
              setState(() {
                weightCount = value;
                log('weightCount: $weightCount');
              });
            },
          ),
          const SizedBox(height: 30),
          CustomCalculateItemPicker(
            onChanged: (value) {
              setState(() {
                height = value;
              });
            },
          ),
          const SizedBox(height: 30),
          CustomButton(
            title: 'Calculate',
            onPressed: () {
              final countKgModel = CountKgModel(
                age: ageCount,
                gender: widget.gender,
                height: height,
                weight: weightCount,
              );
              showCalculateResult(context, countKgModel);
            },
          ),
        ],
      ),
    );
  }
}
