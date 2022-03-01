import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

txtsty(double fonts, Color colors) {
  return TextStyle(
    fontSize: fonts,
    color: colors,
    fontWeight: FontWeight.bold,
  );
}

styleSearch() {
  return BoxDecoration(
      color: Colors.white, borderRadius: BorderRadius.circular(20));
}

styleCategory(Color colors, double radius) {
  return BoxDecoration(
    borderRadius: BorderRadius.circular(radius),
    color: colors,
  );
}
