import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../exports.dart';


class PelagoAppBar extends StatelessWidget {
  const PelagoAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20.0, 45.0, 20.0,0),
      height: 135.0,
      color: theme.whiteColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(FontAwesomeIcons.user, size: 25.0),
            color: theme.blackColor,
            onPressed: () {},
          ),
          SvgPicture.asset('images/logo.svg'),
          IconButton(
            icon: Icon(FontAwesomeIcons.bell, size: 25.0),
            color: theme.blackColor,
            onPressed: () {}
          ),
        ],
      ),
    );
  }
}
