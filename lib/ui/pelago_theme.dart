import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PelagoTheme {
  final Color whiteColor = Color(0xffF3F2F7);
  final Color blackColor = Color(0xffF333333);
  final Color primaryColorDark = Color(0xff2E294E);
  final Color primaryColorLight = Color(0xff5056CE);
  final Color accentDarkColor = Color(0xffBB0E45);
  final Color accentLightColor = Color(0xffD81F5A);

  TextStyle title() {
    return GoogleFonts.getFont(
      'Nunito',
      color: this.blackColor,
      fontWeight: FontWeight.bold,
      fontSize: 36.0,
    );
  }
}
