import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.red,

];

class AppTheme{
  final int selectedColor;

  AppTheme({
    this.selectedColor = 0
  }): assert(selectedColor >= 0, "Selected color must be greater than 0"),
      assert(selectedColor < colorList.length, "Selected color must be less or equal than then 0 ${colorList.length - 1}");

  ThemeData getTheme()=>ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colorList[selectedColor],
    appBarTheme: AppBarTheme(
      centerTitle: false,
    )
  );
}