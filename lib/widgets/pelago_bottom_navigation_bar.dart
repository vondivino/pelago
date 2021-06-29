import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../exports.dart';

class PelagoBottomNavigationBar extends StatefulWidget {
  const PelagoBottomNavigationBar({Key? key}) : super(key: key);

  @override
  _PelagoBottomNavigationBarState createState() => _PelagoBottomNavigationBarState();
}

class _PelagoBottomNavigationBarState extends State<PelagoBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    final listener = Provider.of<HomeScreenProvider>(context);
    final watcher = Provider.of<HomeScreenProvider>(context, listen: false);
    return SizedBox(
      height: 85.0,
      child: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedLabelStyle: GoogleFonts.getFont('Nunito', fontWeight: FontWeight.bold),
        unselectedLabelStyle: GoogleFonts.getFont('Nunito'),
        selectedItemColor: theme.primaryColor,
        currentIndex: listener.currentIndex,
        onTap: (index) => setState(() {
          watcher.changeTab(index);
          watcher.buildCurrentScreen();
          watcher.buildNavBarItems();
        }),
        items: listener.navBarItems,
      ),
    );
  }
}
