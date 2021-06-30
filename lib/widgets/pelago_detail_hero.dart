import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../exports.dart';

class PelagoDetailHero extends StatelessWidget {
  final List<dynamic> other;
  final String image;
  const PelagoDetailHero({
    Key? key,
    required this.other,
    required this.image,
  }) : super(key: key);

  List<Widget> buildOther(context) {
    List<Widget> _results = [];
    for (var o in other) {
      _results.add(Container(
        width: MediaQuery.of(context).size.width - 25,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 5.0),
          child: Text(
            o,
            style: GoogleFonts.getFont(
              'Nunito',
              fontWeight: FontWeight.bold,
              fontSize: 14.0,
              color: theme.greyColor,
            ),
          ),
        ),
      ));
    }
    return _results;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 255,
            child: Image.network(
              image,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20.0),
            color: theme.whiteColor,
            child: Column(
              children: buildOther(context),
            ),
          )
        ],
      ),
    );
  }
}
