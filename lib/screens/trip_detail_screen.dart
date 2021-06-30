import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pelago/exports.dart';

class TripDetailScreen extends StatefulWidget {
  final Trip trip;
  const TripDetailScreen({Key? key, required this.trip}) : super(key: key);

  @override
  _TripDetailScreenState createState() => _TripDetailScreenState();
}

class _TripDetailScreenState extends State<TripDetailScreen> {
  late Trip _trip;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _trip = widget.trip;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(200.0),
          child: PelagoDetailAppBar(title: _trip.title),
        ),
        backgroundColor: theme.scaffoldColor,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              PelagoDetailHero(
                image: _trip.image,
                other: [],
              ),
              SizedBox(height: 20.0),
              PelagoDetailDescription(description: _trip.description),
              SizedBox(height: 20.0),
              PelagoWhatsInMyTrip(destinations: _trip.relatedDestinations),
              PelagoButton(
                label: 'Confirm Trip',
                action: () {},
                isPrimary: true,
              ),
              PelagoButton(
                label: 'Add Trip',
                action: () {},
                isPrimary: false,
              ),
              SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }
}
