import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:main_app/core/constants/app_colors.dart';
import 'package:main_app/core/utils/app_style.dart';
import 'package:main_app/core/widget/custom_button.dart';
import 'package:main_app/feature/calculating/data/model/count_kg_model.dart';
import 'package:main_app/feature/calculating/data/model/details_model.dart';
import 'package:main_app/feature/calculating/presentation/view/widget/cusrom_sf_liner_gauge.dart';
import 'package:main_app/feature/calculating/presentation/view/widget/custom_details_item.dart';

Future<dynamic> showCalculateResult(
  BuildContext context,
  CountKgModel countKgModel,
) {
  final List<DetailsModel> detailsList = [
    DetailsModel(title: 'Weight', value: '${countKgModel.weight} kg'),
    DetailsModel(title: 'height', value: '${countKgModel.height} cm'),
    DetailsModel(title: 'Age', value: '${countKgModel.age}'),
    DetailsModel(title: 'Gender', value: countKgModel.gender),
  ];
  return showDialog(
    context: context,
    barrierColor: Colors.black54,
    builder: (context) => BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: AlertDialog(
        elevation: 0,
        backgroundColor: AppColors.greenColorF0,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 30,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Your BMI:',
              textAlign: TextAlign.center,
              style: AppStyle.textMedium16(
                context,
              ).copyWith(color: AppColors.blackColor0A),
            ),
            const SizedBox(height: 15),
            Text(
              countKgModel.calculateBmi().toString(),
              textAlign: TextAlign.center,
              style: AppStyle.textBold64(
                context,
              ).copyWith(color: AppColors.greenColor51),
            ),
            const SizedBox(height: 20),
            CustomChart(countKgModel: countKgModel),
            const SizedBox(height: 20),
            const Divider(height: 1, color: AppColors.greyColorAC),
            const SizedBox(height: 20),
            Wrap(
              spacing: 20,
              runSpacing: 20,
              alignment: WrapAlignment.center,
              children: List.generate(
                detailsList.length,
                (index) => CustomDetailsItem(
                  title: detailsList[index].title,
                  value: detailsList[index].value,
                ),
              ),
            ),
            const SizedBox(height: 25),
            SizedBox(
              width: double.infinity,
              child: CustomButton(
                title: 'Close',
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
