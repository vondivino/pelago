import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../exports.dart';

class ExploreResultScreen extends StatefulWidget {
  final String categoryCode;
  const ExploreResultScreen({Key? key, required this.categoryCode}) : super(key: key);

  @override
  _ExploreResultScreenState createState() => _ExploreResultScreenState();
}

class _ExploreResultScreenState extends State<ExploreResultScreen> {
  bool isLoading = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    delayScreen();
  }

  Future delayScreen() async {
    Timer(Duration(seconds: 2), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final listener = Provider.of<DataProvider>(context);
    final watcher = Provider.of<DataProvider>(context, listen: false);

    setState(() {
      widget.categoryCode != 'all'
          ? watcher.fetchByCategory(widget.categoryCode)
          : watcher.fetchAllData();
    });

    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: theme.scaffoldColor,
        appBar: AppBar(
          elevation: 0.0,
          leading: IconButton(
            icon: Icon(
              Icons.chevron_left,
              size: 30.0,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            'Explore',
            style: GoogleFonts.getFont(
              'Nunito',
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: theme.primaryColor,
          foregroundColor: theme.blackColor,
        ),
        body: isLoading
            ? PelagoLoader()
            : ListView.builder(
                itemBuilder: (context, i) {
                  return Container(
                    margin: const EdgeInsets.all(10.0),
                    child: PelagoBigListItem(destination: listener.data[i],
                    ),
                  );
                },
                itemCount: listener.data.length,
              ),
      ),
    );
  }
}
