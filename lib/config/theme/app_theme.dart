import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.red,
  Colors.purple,
  Colors.deepPurple,
  Colors.orange,
  Colors.pink,
  Colors.pinkAccent,

];



class AppTheme{
  final int selectedColor;
  final bool isDarkmode;

  AppTheme({required this.isDarkmode, 
    this.selectedColor = 0
  }): assert(selectedColor >= 0, "Selected color must be greater than 0"),
      assert(selectedColor < colorList.length, "Selected color must be less or equal than then 0 ${colorList.length - 1}");

  ThemeData getTheme()=>ThemeData(
    useMaterial3: true,
    brightness: isDarkmode? Brightness.dark : Brightness.light,
    colorSchemeSeed: colorList[selectedColor],
    appBarTheme: AppBarTheme(
      centerTitle: false,
    )
  );
}