import 'package:flutter/material.dart';
import '../../data/models/theme_colors_model.dart';


class ThemeUtils {
  static ThemeData createTheme(ThemeColors themeColors) {
    // Parse the background color (gradient)
    final bgColors = themeColors.bg_clr.split(',').map((color) {
      return Color(int.parse(color.replaceAll('#', '0xff')));
    }).toList();

    // Parse text colors
    final txtTitleColors = themeColors.txt_title_clr.split(',').map((color) {
      return Color(int.parse(color.replaceAll('#', '0xff')));
    }).toList();

    final txtColors = themeColors.txt_clr.split(',').map((color) {
      return Color(int.parse(color.replaceAll('#', '0xff')));
    }).toList();

    // Parse product and category colors
    final prdColor = Color(int.parse(themeColors.prd_clr.replaceAll('#', '0xff')));
    final catColor = Color(int.parse(themeColors.cat_clr.replaceAll('#', '0xff')));

    return ThemeData(
      primaryColor: bgColors.first, // Use the first background color as the primary color
      colorScheme: ColorScheme.light(
        primary: bgColors.first,
        secondary: bgColors.last,
      ),
      listTileTheme: ListTileThemeData(textColor: prdColor),
      textTheme: TextTheme(

        titleLarge: TextStyle(color: txtTitleColors.first), // Updated from headline6
        bodyLarge: TextStyle(color: txtColors.first), // Updated from bodyText1
      ),
      // Add more theme customizations as needed
    );
  }
}