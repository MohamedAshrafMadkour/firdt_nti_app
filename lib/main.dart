import 'package:flutter/material.dart';
import 'package:main_app/core/utils/app_router.dart';
import 'package:main_app/feature/main/presentation/view/main_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateMethod,
      initialRoute: MainView.routeName,
      theme: ThemeData(
        fontFamily: 'Roboto',
        scaffoldBackgroundColor: Colors.white,
      ),
    );
  }
}
