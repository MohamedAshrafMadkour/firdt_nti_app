import 'package:flutter/material.dart';

abstract class AppStyle {
  static TextStyle textSemiBold32(BuildContext context) {
    return const TextStyle(
      fontSize: 32,
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w600,
      height: 1,
    );
  }

  static TextStyle textMedium24(BuildContext context) {
    return const TextStyle(
      color: Color(0xFF0A1207),
      fontSize: 24,
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w500,
      height: 1,
    );
  }

  static TextStyle textBold48(BuildContext context) {
    return const TextStyle(
      fontSize: 48,
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w700,
      height: 1,
    );
  }

  static TextStyle textBold24(BuildContext context) {
    return const TextStyle(
      fontSize: 16,
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w500,
      height: 1,
    );
  }

  static TextStyle textBold16(BuildContext context) {
    return const TextStyle(
      fontSize: 16,
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w700,
      height: 1,
    );
  }

  static TextStyle textMedium16(BuildContext context) {
    return const TextStyle(
      fontSize: 16,
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w500,
      height: 1,
    );
  }

  static TextStyle textBold20(BuildContext context) {
    return const TextStyle(
      color: Color(0xFF519234),
      fontSize: 20,
      fontFamily: 'Lato',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle textBold64(BuildContext context) {
    return const TextStyle(
      fontSize: 64,
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w700,
      height: 1,
    );
  }

  static TextStyle textSemiBold12(BuildContext context) {
    return const TextStyle(
      color: Colors.white,
      fontSize: 12,
      fontFamily: 'Lato',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle textSemiBold20(BuildContext context) {
    return const TextStyle(
      fontSize: 20,
      fontFamily: 'Lato',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle textSemiBold14(BuildContext context) {
    return const TextStyle(
      fontSize: 14,
      fontFamily: 'Lato',
      fontWeight: FontWeight.w600,
    );
  }
}
