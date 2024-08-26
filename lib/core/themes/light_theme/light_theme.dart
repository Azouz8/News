import 'package:flutter/material.dart';
import 'package:news/core/themes/light_theme/app_colors_light.dart';
import 'package:news/core/themes/light_theme/text_styles_light.dart';

ThemeData getLightTheme() => ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: AppColorsLight.scaffoldBackgroundColor,
      textTheme: TextTheme(
        bodyLarge: TextStylesLight.getBodyLarge(),
        titleMedium: TextStylesLight.getTitleMedium(),
        titleSmall: TextStylesLight.getTitleSmall(),
        headlineSmall: TextStylesLight.getHeadlineSmall(),
        headlineMedium: TextStylesLight.getHeadlineMedium(),
        displaySmall: TextStylesLight.getDisplaySmall(),
      ),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(color: AppColorsLight.appBarCompsColor),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: AppColorsLight.appBarCompsColor),
        ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedIconTheme: IconThemeData(color: Color(0xffff5d65)),
          selectedItemColor:  Color(0xffff5d65)
      ),
    );
