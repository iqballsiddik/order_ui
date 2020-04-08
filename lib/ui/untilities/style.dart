import 'package:flutter/material.dart';

const double _baseHeight = 680;

double screenAwareSize(double size, BuildContext context) {
  return size * (MediaQuery.of(context).size.height / _baseHeight);
}

final black38 = Colors.black38;
final black26 = Colors.black26;
final black87 = Colors.black87;
final colorWhite = Colors.white;

class AppColors {
  static Color styleColor = Color(0XFF41474D);
  static Color greyColor = Color(0XFFc9d2d2);
  static Color redColor = Color(0XFFff705f);
}
