import 'package:flutter/material.dart';
import 'package:pelago/screens/home_screen.dart';

void main() {
  runApp(MaterialApp(
    title: 'Pelago',
    home: HomeScreen(),
    theme: ThemeData(
      primaryColor: Color(0xff2E294E),
      accentColor: Color(0xffBB0E45),
    ),
  ));
}
