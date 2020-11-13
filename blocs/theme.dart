import 'package:flutter/material.dart';
import 'package:flutter_bluetooth_serial_example/singleton.dart';

class ThemeChanger with ChangeNotifier {
  MyPreferences singleton = MyPreferences();
  ThemeData _themeData;
  ThemeChanger(this._themeData);
  getTheme() => _themeData;
  setTheme(ThemeData theme) {
    this._themeData = theme;
    singleton.defaultTheme = theme;
    notifyListeners();
  }
}
