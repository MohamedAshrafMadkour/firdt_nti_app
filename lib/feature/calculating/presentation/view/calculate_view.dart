import 'package:flutter/material.dart';
import 'package:main_app/feature/calculating/presentation/view/widget/calculator_view_body.dart';

class CalculatorView extends StatelessWidget {
  const CalculatorView({required this.gender, super.key});
  static const routeName = 'calculate_view';
  final String gender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: CalculateViewBody(gender: gender)),
    );
  }
}
