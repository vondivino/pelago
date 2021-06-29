import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../exports.dart';

// TODO: Refactor bottom navbar
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final listener = Provider.of<HomeScreenProvider>(context);
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: theme.scaffoldColor,
        appBar: PreferredSize(child: PelagoAppBar(), preferredSize: Size.fromHeight(80.0)),
        body: Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: listener.currentScreen,
        ),
        bottomNavigationBar: PelagoBottomNavigationBar(),
      ),
    );
  }
}
