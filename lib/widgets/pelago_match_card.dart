import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../exports.dart';

class PelagoMatchCard extends StatelessWidget {
  final Destination destination;
  const PelagoMatchCard({Key? key, required this.destination}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18.0),
      child: PhysicalModel(
        color: theme.blackColor,
              child: Container(
          color: theme.whiteColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 400.0,
                height: 300.0,
                child: Image.network(destination.image, fit: BoxFit.cover),
              ),
              Container(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      destination.title,
                      style: GoogleFonts.getFont(
                        'Nunito',
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                        color: theme.blackColor,
                      ),
                    ),
                    Text(
                      destination.category,
                      style: GoogleFonts.getFont(
                        'Nunito',
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                        color: theme.greyColor,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
