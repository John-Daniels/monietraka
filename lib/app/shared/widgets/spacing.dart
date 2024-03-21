import 'package:flutter/material.dart';

EdgeInsetsGeometry simpad(double v, double h) {
  return EdgeInsets.symmetric(
    horizontal: h,
    vertical: v,
  );
}

Widget hSpace(double space) {
  return SizedBox(
    width: space,
  );
}
Widget vSpace(double space) {
  return SizedBox(
    height: space,
  );
}
