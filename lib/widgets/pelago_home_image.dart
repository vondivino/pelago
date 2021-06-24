import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pelago/ui/pelago_theme.dart';

PelagoTheme theme = PelagoTheme();

class PelagoHomeImageClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return Rect.fromCenter(
      center: Offset(size.width / 2, size.height / 2 - 80),
      width: 600,
      height: 600,
    );
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    return true;
  }
}

class PelagoHomeImage extends StatelessWidget {
  const PelagoHomeImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipOval(
          clipper: PelagoHomeImageClipper(),
          child: Container(height: 600.0, color: theme.primaryColorDark),
        ),
        SvgPicture.asset('images/home.svg'),
      ],
    );
  }
}
