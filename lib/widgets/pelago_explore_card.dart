import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../exports.dart';

class PelagoExploreCard extends StatelessWidget {
  final String label;
  final IconData icon;
  final String categoryCode;
  const PelagoExploreCard({
    Key? key,
    required this.label,
    required this.icon,
    required this.categoryCode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ExploreResultScreen(categoryCode: categoryCode)));
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.0),
        child:  Container(
            height: 165.0,
            width: 170.0,
            color: theme.whiteColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Icon(icon, size: 50.0, color: theme.blackColor),
                SizedBox(height: 10.0),
                Text(
                  label,
                  style: GoogleFonts.getFont(
                    'Nunito',
                    fontWeight: FontWeight.w500,
                    fontSize: 18.0,
                    color: theme.blackColor,
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
    );
  }
}
