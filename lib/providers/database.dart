import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../exports.dart';

class Database with ChangeNotifier {
  List<Trip> _trips = [
    Trip(
      title: 'My Summer 2021',
      description:
          'I want to take a vacation in Asian countries next summer. This would be a solo trip, just to relax a while from work stress.',
      relatedDestinations: [],
    )
  ];
  List<Trip> get trips => _trips;
}
