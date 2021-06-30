import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../exports.dart';

class PelagoButton extends StatelessWidget {
  final String label;
  final Function action;
  final bool isPrimary;
  const PelagoButton({
    Key? key,
    required this.label,
    required this.action,
    required this.isPrimary,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal:20.0, vertical: 5.0),
      child: InkResponse(
        onTap: () {},
        child: ClipRRect(
          borderRadius: BorderRadius.circular(4.0),
          child: Container(
            color: isPrimary ? theme.primaryColor : theme.secondaryColor,
            height: 40.0,
            child: Center(
              child: Text(
                label,
                style: GoogleFonts.getFont(
                  'Nunito',
                  fontSize: 14.0,
                  color: theme.whiteColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
