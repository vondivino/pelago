import 'package:flutter/material.dart';

import '../exports.dart';

class HomeScreenProvider with ChangeNotifier {
  int? _currentIndex;
  Widget? _currentScreen;
  List<BottomNavigationBarItem>? _navBarItems;

  int get currentIndex => _currentIndex!;
  Widget get currentScreen => _currentScreen!;
  List<BottomNavigationBarItem> get navBarItems => _navBarItems!;

  HomeScreenProvider() {
    _currentIndex = 0;
    _currentScreen = navBarData[_currentIndex!].screen;
    _navBarItems = navBarData.map((e) {
      final index = navBarData.indexOf(e);
      return BottomNavigationBarItem(
          icon: Icon(index == _currentIndex ? e.selectedIcon : e.icon), label: e.label);
    }).toList();
  }

  void changeTab(index) {
    _currentIndex = index;
    notifyListeners();
  }

  void buildNavBarItems() {
    _navBarItems = navBarData.map((e) {
      final index = navBarData.indexOf(e);
      return BottomNavigationBarItem(
          icon: Icon(index == _currentIndex ? e.selectedIcon : e.icon), label: e.label);
    }).toList();
    notifyListeners();
  }

  void buildCurrentScreen() {
    _currentScreen = navBarData[_currentIndex!].screen;
    notifyListeners();
  }
}
