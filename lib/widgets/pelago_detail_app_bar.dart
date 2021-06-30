import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../exports.dart';

class PelagoDetailAppBar extends StatelessWidget {
  final String title;

  const PelagoDetailAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 75.0),
      height: 200.0,
      color: theme.whiteColor,
      child: Row(
        children: [
          Expanded(
            child: IconButton(
              icon: Icon(
                Icons.chevron_left,
                color: theme.primaryColor,
                size: 25.0,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              title,
              style: GoogleFonts.getFont(
                'Nunito',
                fontWeight: FontWeight.bold,
                color: theme.blackColor,
                fontSize: 18.0,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(child: Container())
        ],
      ),
    );
  }
}
