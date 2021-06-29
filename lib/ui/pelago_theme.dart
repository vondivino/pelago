import 'package:flutter/material.dart';

class PelagoTheme {
  final Color whiteColor;
  final Color blackColor;
  final Color primaryColor;
  final Color secondaryColor;
  final Color scaffoldColor;
  final Color greyColor;

  PelagoTheme({
    required this.whiteColor,
    required this.blackColor,
    required this.primaryColor,
    required this.secondaryColor,
    required this.scaffoldColor,
    required this.greyColor,
  });
}

final theme = PelagoTheme(
  whiteColor: Colors.white,
  blackColor: Color(0xff333333),
  primaryColor: Color(0xffBB0E45),
  secondaryColor: Color(0xff2E294E),
  scaffoldColor: Color(0xffEFEFEF),
  greyColor: Color(0xff878787),
);
