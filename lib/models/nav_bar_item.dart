import 'package:flutter/material.dart';

class NavBarItem {
  final IconData icon;
  final String label;
  final Widget screen;
  final IconData selectedIcon;

  NavBarItem({
    required this.selectedIcon,
    required this.icon,
    required this.label,
    required this.screen,
  });
}
