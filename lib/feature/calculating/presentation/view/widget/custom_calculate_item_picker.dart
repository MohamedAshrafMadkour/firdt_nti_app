import 'package:flutter/material.dart';
import 'package:main_app/core/constants/app_colors.dart';
import 'package:main_app/core/utils/app_style.dart';
import 'package:main_app/feature/calculating/presentation/view/widget/custom_picker.dart';

class CustomCalculateItemPicker extends StatefulWidget {
  const CustomCalculateItemPicker({required this.onChanged, super.key});
  final ValueChanged<int> onChanged;
  @override
  State<CustomCalculateItemPicker> createState() =>
      _CustomCalculateItemPickerState();
}

class _CustomCalculateItemPickerState extends State<CustomCalculateItemPicker> {
  int height = 150;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(25),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: const Color(0xFFFBF6EE),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        shadows: const [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 6,
            offset: Offset(0, 2),
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Height (cm)',
            textAlign: TextAlign.center,
            style: AppStyle.textMedium16(
              context,
            ).copyWith(color: AppColors.greyColorAB),
          ),
          const SizedBox(height: 15),
          Text(
            height.toString(),
            textAlign: TextAlign.center,
            style: AppStyle.textBold48(
              context,
            ).copyWith(color: AppColors.amberColorCE),
          ),
          CustomPicker(
            onValueChanged: (value) {
              setState(() {
                height = value;
                widget.onChanged(height);
              });
            },
          ),
        ],
      ),
    );
  }
}
