import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../exports.dart';

class PelagoWhatsInMyTrip extends StatelessWidget {
  final List<Destination> destinations;
  const PelagoWhatsInMyTrip({Key? key, required this.destinations}) : super(key: key);

  Widget buildEmpty() => Center(
        child: Text(
          'You have no trips added. Add now!',
          style: GoogleFonts.getFont(
            'Nunito',
            fontSize: 18.0,
            fontWeight: FontWeight.w500,
            color: theme.greyColor,
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "What's in My Trip",
            style: GoogleFonts.getFont(
              'Nunito',
              fontSize: 24.0,
              color: theme.blackColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.0),
          Container(
            child: destinations.length == 0
                ? buildEmpty()
                : Column(
                    children: destinations.map((e) => PelagoBigListItem(destination: e)).toList(),
                  ),
          )
        ],
      ),
    );
  }
}
