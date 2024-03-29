import 'package:flutter/material.dart';

import '../settings/page/settings_view.dart';
import '../tasks/page/tasks_view.dart';

class SettingsProvider extends ChangeNotifier {
  int currentIndex = 0;
  String currentLanguage = "en";
  ThemeMode currentTheme = ThemeMode.light;

  List<Widget> screens = [
    TasksView(),
    SettingsView(),
  ];

  changeLanguage(String newLanguage) {
    if (currentLanguage == newLanguage) return;
    currentLanguage = newLanguage;
    notifyListeners();
  }

  changeTheme(ThemeMode newTheme) {
    if (currentTheme == newTheme) return;
    currentTheme = newTheme;
    notifyListeners();
  }

  changeIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }

  bool isDark() {
    return currentTheme == ThemeMode.dark;
  }
}
