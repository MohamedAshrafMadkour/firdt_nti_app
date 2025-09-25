import 'package:main_app/feature/calculating/data/enum/bim_enum.dart';

class CountKgModel {
  final int age;
  final int height;
  final int weight;
  final String gender;

  CountKgModel({
    required this.age,
    required this.height,
    required this.weight,
    required this.gender,
  });
  int calculateBmi() {
    final finalHeight = height / 100;
    final bmi = weight / (finalHeight * finalHeight);
    return bmi.toInt();
  }

  String getBmiCategory({required int bmi}) {
    if (bmi < 18.5) {
      return BimEnum.underweight.name;
    } else if (bmi < 25) {
      return BimEnum.normal.name;
    } else if (bmi < 30) {
      return BimEnum.overweight.name;
    } else {
      return BimEnum.obese.name;
    }
  }
}
