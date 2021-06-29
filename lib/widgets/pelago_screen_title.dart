import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../exports.dart';

class PelagoScreenTitle extends StatelessWidget {
  final String title;
  const PelagoScreenTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: GoogleFonts.getFont(
            'Nunito',
            color: theme.blackColor,
            fontSize: 36.0,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
