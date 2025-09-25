import 'package:flutter/material.dart';

class CustomCalculatorItem extends StatelessWidget {
  const CustomCalculatorItem({required this.child, super.key});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
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
      child: child,
    );
  }
}
