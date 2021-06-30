import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../exports.dart';

List<NavBarItem> navBarData = [
  NavBarItem(
    icon: FontAwesomeIcons.paperPlane,
    selectedIcon: FontAwesomeIcons.solidPaperPlane,
    label: 'Match',
    screen: MatchScreen(),
  ),
  NavBarItem(
    icon: FontAwesomeIcons.folderOpen,
    selectedIcon: FontAwesomeIcons.solidFolderOpen,
    label: 'Explore',
    screen: ExploreScreen(),
  ),
  NavBarItem(
    icon: FontAwesomeIcons.map,
    selectedIcon: FontAwesomeIcons.solidMap,
    label: 'Trip',
    screen: TripScreen(),
  ),
];
List<ExploreItem> exploreItems = [
  ExploreItem(label: 'Attractions', icon: FontAwesomeIcons.mountain, categoryCode: 'AT'),
  ExploreItem(label: 'Food & Drinks', icon: FontAwesomeIcons.utensils, categoryCode: 'FD'),
  ExploreItem(label: 'Staycations', icon: FontAwesomeIcons.hotel, categoryCode: 'ST'),
  ExploreItem(label: 'Hidden Gems', icon: FontAwesomeIcons.gem, categoryCode: 'GE'),
  ExploreItem(label: 'Adventure', icon: FontAwesomeIcons.hiking, categoryCode: 'AD'),
  ExploreItem(label: 'Culture & Arts', icon: FontAwesomeIcons.theaterMasks, categoryCode: 'CU'),
];
