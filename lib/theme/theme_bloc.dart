import 'package:bloc_examples/theme/theme_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeData> {
  ThemeBloc()
      : super(
          lighttheme,
        ) {
    on<ChangeTheme>(
      (event, emit) {
        emit(
          state.brightness == Brightness.light ? darkttheme : lighttheme,
        );
      },
    );
  }
  static final ThemeData lighttheme = ThemeData(
    brightness: Brightness.light,
  );
  static final ThemeData darkttheme = ThemeData(
    brightness: Brightness.dark,
  );
}
