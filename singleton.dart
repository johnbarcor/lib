import 'package:flutter/material.dart';
//import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
//import 'package:flutter_bluetooth_serial_example/pages/Page_Settings.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyPreferences {
  static const GATOLATERALST = "gatolateralSt";
  static const BTST = "btSt";

  static const DEFAULTTHEMEON = "defaultThemeOn";

  static const PROBEVALUE = "probevalue";

  static const PROBEVALUE2 = "probevalue2";

  static const PROBEVALUE3 = "probevalue3";

  static final MyPreferences _instance = MyPreferences._internal();
  SharedPreferences _sharedPreferences;

  //bool notificationsEnabled = true;
  bool velAnalog = true;
  bool velDig = false;
  bool tacAnalog = true;
  bool tacDig = false;
  bool voltSt = true;
  bool reguladorSt = false;
  bool generadorSt = false;
  bool kilometrajeSt = false;
  bool trip1St = false;
  bool trip2St = false;
  bool tempMotorSt = true;
  bool tempAmbSt = false;
  bool farolaSt = true;
  bool stopSt = false;
  bool lucesSt = false;
  bool direccionalesSt = true;
  bool estacionariasSt = true;
  bool gasolinaSt = false;
  bool autonomiaSt = false;
  bool marchaSt = false;
  bool neutroSt = false;
  bool gatolateralSt = false;
  bool presionAceiteSt = false;
  bool presionDelSt = false;
  bool presionTraSt = false;
  bool modoManSt = false;
  bool absSt = false;
  bool controlTracSt = false;
  bool keylessSt = true;
  bool btSt = false;
  bool defaultThemeOn = true;
  ThemeData defaultTheme;
  Color iconcolor = Colors.red;
  double probevalue = 1.0;
  double probevalue3 = 5.0;
  String probevalue2 = "nada";

  MyPreferences._internal();

  factory MyPreferences() => _instance;

  // ignore: missing_return
  Future<bool> commit() async {
    await _sharedPreferences.setBool(DEFAULTTHEMEON, defaultThemeOn);
    await _sharedPreferences.setBool(GATOLATERALST, gatolateralSt);
    await _sharedPreferences.setBool(BTST, btSt);
    await _sharedPreferences.setDouble(PROBEVALUE, probevalue);
    await _sharedPreferences.setDouble(PROBEVALUE2, probevalue3);
    await _sharedPreferences.setString(PROBEVALUE2, probevalue2);
  }

  Future<SharedPreferences> get preferences async {
    if (_sharedPreferences != null) {
      return _sharedPreferences;
    } else {
      _sharedPreferences = await SharedPreferences.getInstance();
      //estas son las nuevas instancias:
      defaultThemeOn = _sharedPreferences.getBool(DEFAULTTHEMEON) ?? true;
      gatolateralSt = _sharedPreferences.getBool(GATOLATERALST) ?? false;
      btSt = _sharedPreferences.getBool(BTST) ?? false;
      probevalue = _sharedPreferences.getDouble(PROBEVALUE) ?? 0.0;
      probevalue3 = _sharedPreferences.getDouble(PROBEVALUE3) ?? 5.0;
      probevalue2 = _sharedPreferences.getString(PROBEVALUE2) ?? "nada";
      return _sharedPreferences;
    }
  }

  Future<MyPreferences> init() async {
    _sharedPreferences = await preferences;
    return this;
  }
}
