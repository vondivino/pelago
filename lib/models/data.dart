import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../exports.dart';

List<NavBarItem> navBarItems = [
  NavBarItem(
    icon: Icon(FontAwesomeIcons.paperPlane),
    label: 'Match',
    screen: MatchScreen(),
  ),
  NavBarItem(
    icon: Icon(FontAwesomeIcons.folderOpen),
    label: 'Explore',
    screen: ExploreScreen(),
  ),
  NavBarItem(
    icon: Icon(FontAwesomeIcons.map),
    label: 'Trip',
    screen: TripScreen(),
  ),
];

List<ExploreItem> exploreItems = [
  ExploreItem(label: 'Attractions', icon: FontAwesomeIcons.mountain),
  ExploreItem(label: 'Food & Drinks', icon: FontAwesomeIcons.utensils),
  ExploreItem(label: 'Staycations', icon: FontAwesomeIcons.hotel),
  ExploreItem(label: 'Hidden Gems', icon: FontAwesomeIcons.gem),
  ExploreItem(label: 'Adventure', icon: FontAwesomeIcons.hiking),
  ExploreItem(label: 'Culture & Arts', icon: FontAwesomeIcons.theaterMasks),
];

List<Trip> trips = [
  Trip(
    title: 'My Summer 2021',
    description: 'I want to take a vacation in Asian countries next summer. This would be a solo trip, just to relax a while from work stress.',
    relatedDestinations: [],
    image: 'https://images.unsplash.com/photo-1549998170-921dc0d86bc8?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1951&q=80',
  ),
  Trip(
    title: 'Proposal Trip',
    description: 'I want to take a vacation in Asian countries next summer. This would be a solo trip, just to relax a while from work stress.',
    relatedDestinations: [],
    image: 'https://images.unsplash.com/photo-1549144511-f099e773c147?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80',
  ),
  Trip(
    title: 'Vist my relative',
    description: 'I want to take a vacation in Asian countries next summer. This would be a solo trip, just to relax a while from work stress.',
    relatedDestinations: [],
    image: 'https://images.unsplash.com/photo-1565840293007-ba62ca757c80?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80'
  ),
];
