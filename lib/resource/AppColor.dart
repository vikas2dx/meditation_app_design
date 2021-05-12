import 'package:flutter/material.dart';

class  AppColor
{
  static Color themeColor=HexColor("4A80F0");
  static Color white=HexColor("FFFFFF");
  static Color popularCardColor=HexColor("2D73D5");
  static Color newMeditationCardColor=HexColor("ffa04d");



}

 class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}