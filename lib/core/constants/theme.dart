import 'package:flutter/material.dart';


class Theme {
  static ThemeData themeData = ThemeData(
  
    colorScheme: const ColorScheme.light(
      // primary: ColorConst.kPrimaryColor,
    ),
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        
      ),
      actionsIconTheme: const IconThemeData(
        color: Colors.white
      ),
    ),
  );
}
