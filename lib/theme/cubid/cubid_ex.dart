import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';

class ThemeCubit extends Cubit<ThemeData> {
  ThemeCubit() : super(lighttheme);
  void toggletheme() {
    emit(state.brightness == Brightness.light ? darkttheme : lighttheme);
  }

  static final ThemeData lighttheme = ThemeData(
    brightness: Brightness.light,
  );
  static final ThemeData darkttheme = ThemeData(
    brightness: Brightness.dark,
  );
}
