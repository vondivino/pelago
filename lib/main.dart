import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './exports.dart';

void main() => runApp(MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => HomeScreenProvider()),
          ChangeNotifierProvider(create: (_) => ExploreScreenProvider()),
          ChangeNotifierProvider(create: (_) => DataProvider()),
          ChangeNotifierProvider(create: (_) => Database()),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Pelago',
          home: HomeScreen(),
        )));
