import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:tcard/tcard.dart';
import '../exports.dart';

class MatchScreen extends StatefulWidget {
  const MatchScreen({Key? key}) : super(key: key);

  @override
  _MatchScreenState createState() => _MatchScreenState();
}

class _MatchScreenState extends State<MatchScreen> {
  TCardController _controller = TCardController();
  bool isCalculating = false;

  @override
  Widget build(BuildContext context) {
    final matcher = MatcherService();
    final listener = Provider.of<DataProvider>(context);
    final watcher = Provider.of<DataProvider>(context, listen: false);
    setState(() {
      watcher.loadData();
    });
    return Container(
      child: listener.data.isEmpty || isCalculating
          ? PelagoLoader()
          : Column(
              children: [
                PelagoScreenTitle(title: 'Match'),
                SizedBox(height: 10.0),
                TCard(
                  controller: _controller,
                  size: Size(400, 510.0),
                  cards: listener.data.map((e) => PelagoMatchCard(destination: e)).toList(),
                  onBack: (context, info) => print(info.direction),
                  onForward: (_context, info) {
                    try {
                      if (info.direction == SwipDirection.Right) {
                        matcher.addScore(listener.data[info.cardIndex]);
                      }
                      if (info.cardIndex == 9) {
                        var highScore = matcher.getHighScore();
                        setState(() {
                          isCalculating = true;
                          matcher.resetScore();
                          _controller.reset();
                        });
                        Future.delayed(Duration(seconds: 2), () {
                          setState(() {
                            isCalculating = false;
                            watcher.fetchForMatch();
                          });
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ExploreResultScreen(categoryCode: highScore)));
                        });
                      }
                    } catch (e) {}
                  },
                ),
                SizedBox(height: 5.0),
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
                        setState(() {
                          watcher.fetchForMatch();
                          matcher.resetScore();
                          _controller.reset();
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
