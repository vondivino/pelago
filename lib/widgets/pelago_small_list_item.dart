import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import '../exports.dart';

class PelagoSmallListItem extends StatelessWidget {
  final String title;
  final String? subtitle;
  final String image;
  const PelagoSmallListItem({
    Key? key,
    required this.title,
    this.subtitle,
    required this.image,
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
          child: Image.network(image, fit: BoxFit.cover),
        ),
      ),
      title: Text(
        title,
        style: GoogleFonts.getFont(
          'Nunito',
          fontSize: 18.0,
          color: theme.blackColor,
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: subtitle != null
          ? Text(
              subtitle!,
              style: GoogleFonts.getFont(
                'Nunito',
                color: theme.greyColor,
                fontSize: 14.0,
                fontWeight: FontWeight.w500,
              ),
            )
          : null,
      trailing: IconButton(
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (_) => ExploreResultScreen(category: 'sadf'))),
        icon: Icon(FontAwesomeIcons.arrowRight),
        color: theme.blackColor,
      ),
    );
  }
}
