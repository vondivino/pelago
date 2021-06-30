import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../exports.dart';

class PelagoWhatToExpect extends StatelessWidget {
  final String expectation;
  const PelagoWhatToExpect({Key? key, required this.expectation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      color: theme.whiteColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'What To Expect',
            style: GoogleFonts.getFont(
              'Nunito',
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
              color: theme.primaryColor,
            ),
          ),
        SizedBox(height: 10.0),
          Text(
            expectation,
            style: GoogleFonts.getFont(
              'Nunito',
              fontWeight: FontWeight.normal,
              fontSize: 14.0,
              color: theme.blackColor,
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }
}
