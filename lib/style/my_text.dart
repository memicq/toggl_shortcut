import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyText {
  static Text normal(
    text, {
    Color color = Colors.black,
    double fontSize = 14,
  }) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.w400,
        fontSize: fontSize,
      ),
    );
  }

  static Text normalBold(
    text, {
    Color color = Colors.black,
    double fontSize = 14,
  }) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.w700,
        fontSize: fontSize,
      ),
    );
  }

  static Text round(
    text, {
    Color color = Colors.black,
    double fontSize = 14,
  }) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.w400,
        fontSize: fontSize,
        fontFamily: "MPLUSRounded1c",
      ),
    );
  }

  static Text roundBold(
    text, {
    Color color = Colors.black,
    double fontSize = 14,
  }) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.w700,
        fontSize: fontSize,
        fontFamily: "MPLUSRounded1c",
      ),
    );
  }
}
