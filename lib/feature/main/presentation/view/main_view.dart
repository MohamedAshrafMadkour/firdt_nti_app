import 'package:flutter/material.dart';
import 'package:main_app/feature/main/presentation/view/widget/main_view_body.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});
  static const routeName = 'main_view';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: MainViewBody()));
  }
}
