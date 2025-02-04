import 'package:flutter/material.dart';
import 'package:bitspan_flutter_task/data/models/theme_colors_model.dart';

class AppTheme {
  static ThemeData getTheme(ThemeColors themeColors, Brightness brightness) {
    // Parse the color strings into Color objects
    final bgColors = _parseColors(themeColors.bg_clr);
    final txtTitleColors = _parseColors(themeColors.txt_title_clr);
    final txtColors = _parseColors(themeColors.txt_clr);
    final prdColors = _parseColors(themeColors.prd_clr);
    final catColors = _parseColors(themeColors.cat_clr);

    // Use the first color for light theme and the second for dark theme
    final primaryColor = brightness == Brightness.light ? bgColors[0] : bgColors[1];
    final secondaryColor = brightness == Brightness.light ? bgColors[1] : bgColors[0];

    return ThemeData(
      brightness: brightness, // Set the brightness (light/dark)
      colorScheme: ColorScheme.fromSeed(
        seedColor: primaryColor, // Use primaryColor as the seed
        brightness: brightness,
        secondary: secondaryColor, // Use secondaryColor for the secondary color
      ),
      appBarTheme: AppBarTheme(

        backgroundColor: primaryColor,
        titleTextStyle: TextStyle(
          color: txtTitleColors.first,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      textTheme: TextTheme(
        titleLarge: TextStyle(color: txtTitleColors.first), // Replaces headline6
        bodyLarge: TextStyle(color: txtColors.first), // Replaces bodyText1
      ),
      listTileTheme: ListTileThemeData(
        textColor: catColors.first,
        tileColor: txtTitleColors.first,
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: primaryColor,
        textTheme: ButtonTextTheme.primary,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: primaryColor,
        foregroundColor: txtTitleColors.first,
      ),
      // Add more theme customizations as needed
    );
  }

  /// Helper method to parse color strings into Color objects
  static List<Color> _parseColors(String colorString) {
    try {
      return colorString.split(',').map((color) {
        return Color(int.parse(color.replaceAll('#', '0xff')));
      }).toList();
    } catch (e) {
      // Fallback to default colors if parsing fails
      return [Colors.blue, Colors.green];
    }
  }
}