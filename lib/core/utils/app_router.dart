import 'package:flutter/material.dart';
import 'package:main_app/feature/calculating/presentation/view/calculate_view.dart';
import 'package:main_app/feature/main/presentation/view/main_view.dart';

Route<dynamic> onGenerateMethod(RouteSettings settings) {
  switch (settings.name) {
    case MainView.routeName:
      return MaterialPageRoute(builder: (context) => const MainView());
    case CalculatorView.routeName:
      return MaterialPageRoute(
        builder: (context) =>
            CalculatorView(gender: settings.arguments as String),
      );
    default:
      return MaterialPageRoute(builder: (context) => const SizedBox());
  }
}
