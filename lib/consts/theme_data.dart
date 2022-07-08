import 'package:flutter/material.dart';


class Styles{
  static ThemeData themeData(bool isDarkTheme, BuildContext context){
    return  ThemeData(
      scaffoldBackgroundColor: isDarkTheme ? Colors.black38 : Colors.white,
      primaryColor: Colors.green,
      colorScheme: ThemeData().colorScheme.copyWith(
        secondary: isDarkTheme ? Colors.black26 : Colors.white70,
        brightness: isDarkTheme ? Brightness.dark : Brightness.light,
      ),
      cardColor : isDarkTheme ? Colors.black26 : Colors.white,
        canvasColor: isDarkTheme ? Colors.black : Colors.grey[50],
      buttonTheme: Theme.of(context).buttonTheme.copyWith(
        colorScheme: isDarkTheme
            ? const ColorScheme.dark()
            : ColorScheme.light()
      ),

    );
  }
}