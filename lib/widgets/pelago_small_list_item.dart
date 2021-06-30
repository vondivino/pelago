import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import '../exports.dart';

class PelagoSmallListItem extends StatelessWidget {
  final Trip trip;
  const PelagoSmallListItem({
    Key? key,
    required this.trip,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(20.0),
      tileColor: theme.whiteColor,
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Container(
          height: 60.0,
          width: 60.0,
          child: Image.network(trip.image, fit: BoxFit.cover),
        ),
      ),
      title: Text(
        trip.title,
        style: GoogleFonts.getFont(
          'Nunito',
          fontSize: 18.0,
          color: theme.blackColor,
          fontWeight: FontWeight.w500,
        ),
      ),
      trailing: IconButton(
        onPressed: () =>
            Navigator.push(context, MaterialPageRoute(builder: (_) => TripDetailScreen(trip: trip))),
        icon: Icon(FontAwesomeIcons.arrowRight),
        color: theme.blackColor,
      ),
    );
  }
}
