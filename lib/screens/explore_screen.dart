import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../exports.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    final listener = Provider.of<ExploreScreenProvider>(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          PelagoScreenTitle(title: 'Explore'),
          SizedBox(height: 10.0),
          Wrap(alignment: WrapAlignment.spaceBetween, children: listener.exploreCards),
        ],
      ),
    );
  }
}
