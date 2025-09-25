import 'package:flutter/material.dart';
import 'package:main_app/core/constants/app_colors.dart';
import 'package:simple_ruler_picker/simple_ruler_picker.dart';

class CustomPicker extends StatefulWidget {
  const CustomPicker({required this.onValueChanged, super.key});
  final ValueChanged<int> onValueChanged;
  @override
  State<CustomPicker> createState() => _CustomPickerState();
}

class _CustomPickerState extends State<CustomPicker> {
  int height = 150;
  @override
  Widget build(BuildContext context) {
    return SimpleRulerPicker(
      initialValue: 150,

      onValueChanged: (value) {
        setState(() {
          if (value == 0) return;
          height = value;
          widget.onValueChanged(height);
        });
      },
      scaleLabelSize: 16,
      scaleBottomPadding: 8,
      scaleItemWidth: 12,
      longLineHeight: 30,
      shortLineHeight: 15,
      lineColor: const Color(0xFFC4C4C4),
      selectedColor: AppColors.amberColorCE,
      labelColor: AppColors.amberColorCE,
      lineStroke: 3,
      height: 120,
    );
  }
}
