import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:pelago/models/destionation.dart';

class PelagoApi {
  Future<List<Destination>> getJson() async {
    String jsonText = await rootBundle.loadString('api/api.json');
    List<dynamic> data = json.decode(jsonText);

    List<Destination> destinations = [];
    for (var e in data) {
      destinations.add(Destination(
        categoryCode: e['category_code'],
        image: e['image'],
        description: e['description'],
        expectation: e['expectation'],
        other: e['other'],
        highlights: e['highlights'],
        title: e['title'],
        category: e['category'],
      ));
    }
    return destinations;
  }
}
