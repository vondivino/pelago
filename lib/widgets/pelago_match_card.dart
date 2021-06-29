import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../exports.dart';

class PelagoMatchCard extends StatelessWidget {
  const PelagoMatchCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18.0),
      child: Container(
        color: theme.whiteColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 400.0,
              height: 340.0,
              child: Image.network(
                'https://images.unsplash.com/photo-1552733407-5d5c46c3bb3b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1014&q=80',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Short oneliner',
                    style: GoogleFonts.getFont(
                      'Nunito',
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                      color: theme.blackColor,
                    ),
                  ),
                  Text(
                    'Category',
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
    );
  }
}
