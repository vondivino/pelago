import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../exports.dart';

class PelagoDetailHighlights extends StatelessWidget {
  final List highlights;
  const PelagoDetailHighlights({Key? key, required this.highlights}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      color: theme.whiteColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Highlights',
            style: GoogleFonts.getFont(
              'Nunito',
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
              color: theme.primaryColor,
            ),
          ),
          SizedBox(height: 10.0,),
          ...highlights.map((e) {
            if (e.length > 0)
              return Container(
                padding: const EdgeInsets.only(left: 5.0),
                height: 50.0,
                child: Text(
                  '• ${e}',
                  style: GoogleFonts.getFont(
                    'Nunito',
                    fontWeight: FontWeight.normal,
                    fontSize: 14.0,
                    color: theme.blackColor,
                    height: 1.4,
                  ),
                ),
              );
            return Container();
          }).toList()
        ],
      ),
    );
  }
}
