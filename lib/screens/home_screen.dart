import 'package:flutter/material.dart';
import 'package:pelago/screens/matcher_screen.dart';
import 'package:pelago/ui/pelago_theme.dart';
import 'package:pelago/widgets/pelago_home_image.dart';
import 'package:pelago/widgets/pelago_primary_button.dart';

PelagoTheme theme = PelagoTheme();

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        PelagoHomeImage(),
        Text(
          'Plan your next travel in minutes!',
          style: theme.title(),
          textAlign: TextAlign.center,
        ),
        Expanded(child: Container()),
        PelagoPrimaryButton(
          text: 'Start now',
          action: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MatcherScreen()));
          },
        ),
        SizedBox(height: 50.0),
      ],
    ));
  }
}
