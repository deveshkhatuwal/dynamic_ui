import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bitspan_flutter_task/data/models/theme_colors_model.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeInitial()) {
    on<UpdateTheme>(_onUpdateTheme);
    on<ToggleTheme>(_onToggleTheme);
  }

  void _onUpdateTheme(UpdateTheme event, Emitter<ThemeState> emit) {
    emit(ThemeUpdated(event.themeColors, Brightness.dark)); // Default to light theme
  }

  void _onToggleTheme(ToggleTheme event, Emitter<ThemeState> emit) {
    if (state is ThemeUpdated) {
      final currentState = state as ThemeUpdated;
      final newBrightness = currentState.brightness == Brightness.light
          ? Brightness.dark
          : Brightness.light;
      emit(ThemeUpdated(currentState.themeColors, newBrightness));
    }
  }
}