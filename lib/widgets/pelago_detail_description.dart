import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pelago/exports.dart';

class PelagoDetailDescription extends StatelessWidget {
  final String description;
  const PelagoDetailDescription({Key? key, required this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      color: theme.whiteColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Description',
            style: GoogleFonts.getFont(
              'Nunito',
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
              color: theme.primaryColor,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            description,
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
