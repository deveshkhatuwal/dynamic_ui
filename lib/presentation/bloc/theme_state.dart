part of 'theme_bloc.dart';

abstract class ThemeState {}

class ThemeInitial extends ThemeState {}

class ThemeUpdated extends ThemeState {
  final ThemeColors themeColors;
  final Brightness brightness;

  ThemeUpdated(this.themeColors, this.brightness);

}
class ToggleTheme extends ThemeEvent {}