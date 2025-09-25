import 'package:flutter/material.dart';
import 'package:main_app/core/constants/app_colors.dart';
import 'package:main_app/core/constants/app_size.dart';
import 'package:main_app/core/helper/custom_snack_bar.dart';
import 'package:main_app/core/utils/app_style.dart';
import 'package:main_app/core/widget/custom_button.dart';
import 'package:main_app/core/widget/main_text.dart';
import 'package:main_app/feature/calculating/presentation/view/calculate_view.dart';
import 'package:main_app/feature/main/data/model/gender_model.dart';
import 'package:main_app/feature/main/presentation/view/widget/custom_gender.dart';

class MainViewBody extends StatefulWidget {
  const MainViewBody({super.key});

  @override
  State<MainViewBody> createState() => _MainViewBodyState();
}

class _MainViewBodyState extends State<MainViewBody> {
  int currentIndex = -1;
  String gender = '';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSize.horizontalPadding,
      ),
      child: Column(
        children: [
          const SizedBox(height: 24),
          const MainText(),
          const SizedBox(height: 40),
          Text(
            'Please choose your gender',
            textAlign: TextAlign.center,
            style: AppStyle.textMedium24(
              context,
            ).copyWith(color: AppColors.blackColor0A),
          ),
          const SizedBox(height: 30),
          Column(
            children: List.generate(
              2,
              (index) => Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      currentIndex = index;
                      gender = genderList[index].title;
                    });
                  },
                  child: CustomGender(
                    genderList: genderList[index],
                    isChoose: currentIndex == index,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          CustomButton(
            title: 'Continue',
            onPressed: () {
              if (gender.isEmpty) {
                customSnackBar(context);
              } else {
                Navigator.pushNamed(
                  context,
                  CalculatorView.routeName,
                  arguments: gender,
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
