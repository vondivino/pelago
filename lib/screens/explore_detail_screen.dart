import 'package:flutter/material.dart';
import 'package:pelago/exports.dart';

class ExploreDetailScreen extends StatefulWidget {
  final Destination destination;
  const ExploreDetailScreen({Key? key, required this.destination}) : super(key: key);

  @override
  _ExploreDetailScreenState createState() => _ExploreDetailScreenState();
}

class _ExploreDetailScreenState extends State<ExploreDetailScreen> {
  late Destination _destination;
  @override
  void initState() {
    _destination = widget.destination;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(200.0),
          child: PelagoDetailAppBar(title: _destination.title),
        ),
        backgroundColor: theme.scaffoldColor,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              PelagoDetailHero(other: _destination.other, image: _destination.image,),
              SizedBox(height: 20.0),
              PelagoDetailDescription(description: _destination.description),
              SizedBox(height: 20.0),
              PelagoDetailHighlights(highlights: _destination.highlights),
              SizedBox(height: 20.0),
              PelagoWhatToExpect(expectation: _destination.expectation),
              SizedBox(height: 20.0),
              PelagoButton(
                label: 'Add to My Trip',
                action: () {},
                isPrimary: true,
              ),
              PelagoButton(
                label: 'Add to Wishlist',
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
