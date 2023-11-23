import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran_ku/core/dark_theme_preference.dart';

class SetDarkThemeCubit extends Cubit<bool> {
  DarkThemePreference darkThemePreference = DarkThemePreference();
  SetDarkThemeCubit() : super(false);
  void setDarkTheme(bool value) {
    darkThemePreference.setDarkTheme(value);
    emit(value);
  }

  void getDarkTheme() async {
    var value = await darkThemePreference.getTheme();
    emit(value);
  }
}
