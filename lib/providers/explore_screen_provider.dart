import 'package:flutter/material.dart';
import '../exports.dart';

class ExploreScreenProvider with ChangeNotifier {
  List<Column> _exploreCards = exploreItems
      .map((e) => Column(children: [
            PelagoExploreCard(label: e.label, icon: e.icon),
            SizedBox(height: 25.0),
          ]))
      .toList();

  List<Column> get exploreCards => _exploreCards;
}
