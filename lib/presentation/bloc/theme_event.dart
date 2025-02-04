part of 'theme_bloc.dart';

abstract class ThemeEvent {}

class UpdateTheme extends ThemeEvent {
  final ThemeColors themeColors;

  UpdateTheme(this.themeColors);
}