import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tcard/tcard.dart';
import '../exports.dart';

class MatchScreen extends StatefulWidget {
  const MatchScreen({Key? key}) : super(key: key);

  @override
  _MatchScreenState createState() => _MatchScreenState();
}

class _MatchScreenState extends State<MatchScreen> {
  TCardController _controller = TCardController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          PelagoScreenTitle(title: 'Match'),
          SizedBox(height: 10.0),
          TCard(
            controller: _controller,
            size: Size(400, 480.0),
            cards: [PelagoMatchCard(), PelagoMatchCard(), PelagoMatchCard()],
            onBack: (context, info) => print(info.direction),
            onForward: (context, info) => print(info.direction),
          ),
          SizedBox(height: 20.0),
          ClipRRect(
            borderRadius: BorderRadius.circular(50.0),
            child: Container(
              width: 60.0,
              height: 60.0,
              color: theme.whiteColor,
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                icon: Icon(FontAwesomeIcons.undoAlt, size: 25.0, color: theme.greyColor),
                iconSize: 25.0,
                onPressed: () {
                  _controller.reset();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
