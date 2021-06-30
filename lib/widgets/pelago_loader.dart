import 'package:flutter/material.dart';

import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:pelago/exports.dart';

class PelagoLoader extends StatelessWidget {
  const PelagoLoader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SpinKitChasingDots(color: theme.primaryColor,size: 50.0,);
  }
}
