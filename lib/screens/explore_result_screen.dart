import 'package:flutter/material.dart';
import '../exports.dart';

// TODO: Develop search engine and filter system
class ExploreResultScreen extends StatefulWidget {
  final String category;
  const ExploreResultScreen({Key? key, required this.category})
      : super(key: key);

  @override
  _ExploreResultScreenState createState() => _ExploreResultScreenState();
}

class _ExploreResultScreenState extends State<ExploreResultScreen> {
  late String _category;

  @override
  void initState() {
    super.initState();
    _category = widget.category;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: theme.scaffoldColor,
        appBar: AppBar(),
      ),
    );
  }
}
