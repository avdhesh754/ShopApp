
import 'package:flutter/material.dart';
import 'package:shopapp/services/dark_theme_prefs.dart';

class DarkThemeprovider with ChangeNotifier{
  DarkThemepref darkThemepref = DarkThemepref();
  bool _darkTheme = false;
  bool get getDarkTheme => _darkTheme;

  set setDarkTheme(bool value){
    _darkTheme = value;
    darkThemepref.setDarkTheme(value);
    notifyListeners();


  }
}