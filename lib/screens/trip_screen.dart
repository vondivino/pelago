import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../exports.dart';

class TripScreen extends StatefulWidget {
  const TripScreen({Key? key}) : super(key: key);

  @override
  _TripScreenState createState() => _TripScreenState();
}

class _TripScreenState extends State<TripScreen> {
  @override
  Widget build(BuildContext context) {
    final trips = Provider.of<Database>(context).trips;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          PelagoScreenTitle(title: 'My Trips'),
          SizedBox(height: 10.0),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, i) => PelagoSmallListItem(trip: trips[i]),
              separatorBuilder: (context, i) => Opacity(
                opacity: 0.0,
                child: SizedBox(height: 10.0),
              ),
              itemCount: trips.length,
            ),
          )
        ],
      ),
    );
  }
}
