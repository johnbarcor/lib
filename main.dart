import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_bluetooth_serial_example/pages/Page_Intercom.dart';
import 'package:flutter_bluetooth_serial_example/pages/Page_Home.dart';
import 'package:flutter_bluetooth_serial_example/pages/Page_Motorcycle.dart';
import 'package:flutter_bluetooth_serial_example/pages/Page_GPS.dart';
//import 'package:flutter_bluetooth_serial_example/pages/Page_Probe.dart';
import 'package:flutter_bluetooth_serial_example/pages/Page_Profile.dart';
import 'package:flutter_bluetooth_serial_example/pages/Page_Settings.dart';

import 'package:flutter_bluetooth_serial_example/singleton.dart';

import 'package:flutter_bluetooth_serial_example/MainPage.dart';

void main() => runApp(MaterialApp(title: "Groundhog", home: NavBar()));

class NavBar extends StatefulWidget {
  @override
  NavBarState createState() => NavBarState();
}

class NavBarState extends State<NavBar> {
  MyPreferences singleton = MyPreferences();

  int pageIndex = 0;

  final PageSettings _settings = PageSettings();
  final PageHome _home = PageHome();
  final PageMotorcycle _motorcycle = PageMotorcycle();
  final PageGPS _gps = PageGPS();
  final PageIntercom _intercom = PageIntercom();
  final PageProfile _profile = PageProfile();
  //final PageLoading _loading = PageLoading();
  final MainPage _probe = MainPage();

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  //GlobalKey _bottomNavigationKey = GlobalKey();

  Widget _showPage = PageHome();

  Widget _pageChooser(int page) {
    switch (page) {
      case 0:
        return _settings;
        break;
      case 1:
        return _home;
        break;
      case 2:
        return _motorcycle;
        break;
      case 3:
        return _gps;
        break;
      case 4:
        return _intercom;
        break;
      case 5:
        return _profile;
        break;
      case 6:
        return _probe;
        break;
      default:
        return new Container(
          child: new Center(
            child: new Text("falta enlazar página"),
          ),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    bool tm = singleton.defaultThemeOn;
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: singleton.defaultTheme,
      home: Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          color: (tm) ? Colors.white60 : Colors.black45,
          backgroundColor: (tm) ? Colors.blueGrey[100] : Colors.blueGrey[100],
          buttonBackgroundColor: (tm) ? Colors.red[300] : Colors.red[300],
          //initialIndex: pageIndex,
          //key: _bottomNavigationKey,
          index: 1, //índice inicial, la página donde iniciará
          height: 47.0,
          items: <Widget>[
            Icon(
              Icons.settings,
              size: 30,
              color: (tm) ? Colors.black : Colors.white,
            ),
            Icon(Icons.home, size: 30),
            Icon(Icons.motorcycle, size: 30),
            Icon(Icons.navigation, size: 30),
            Icon(Icons.phone_in_talk, size: 30),
            Icon(Icons.perm_identity, size: 30),
            Icon(Icons.bluetooth, size: 30),
          ],
          //color: Colors.brown,
          //buttonBackgroundColor: Colors.blueGrey,
          //backgroundColor: Colors.grey,
          animationCurve: Curves.easeInExpo,
          animationDuration: Duration(milliseconds: 200),
          onTap: (int tappedIndex) {
            setState(() {
              _showPage = _pageChooser(tappedIndex);
            });
          },
        ),
        body: Container(
            //color: Colors.white,
            child: Center(
          child: _showPage,
        )),
      ),
    );
  }
}
