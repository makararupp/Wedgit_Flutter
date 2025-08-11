import 'package:flutter/material.dart';

class ThemeLogic extends ChangeNotifier{
  ThemeMode _mode = ThemeMode.light;
  ThemeMode get mode => _mode;

  void changeToLightMode(){
    _mode = ThemeMode.light;
    notifyListeners();
  }

  void changeToDarkMode(){
    _mode = ThemeMode.dark;
    notifyListeners();
  }

  void chanegToSystemMode(){
    _mode = ThemeMode.system;
    notifyListeners();
  }

}