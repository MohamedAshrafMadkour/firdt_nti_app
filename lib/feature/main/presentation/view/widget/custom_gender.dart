import 'package:flutter/material.dart';
import 'package:main_app/core/utils/app_style.dart';
import 'package:main_app/feature/main/data/model/gender_model.dart';

class CustomGender extends StatelessWidget {
  const CustomGender({
    required this.genderList,
    required this.isChoose,
    super.key,
  });
  final GenderModel genderList;
  final bool isChoose;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.sizeOf(context).height * .2,
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: genderList.backgroundColor,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: isChoose ? Colors.white : genderList.backgroundColor,
            width: isChoose ? 6 : 0,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 6,
            offset: Offset(0, 2),
            spreadRadius: 1,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            genderList.title,
            textAlign: TextAlign.center,
            style: AppStyle.textSemiBold32(
              context,
            ).copyWith(color: genderList.textColor),
          ),

          Image.asset(
            genderList.image,
            width: MediaQuery.sizeOf(context).width * .3,
            height: MediaQuery.sizeOf(context).height * .15,
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }
}
