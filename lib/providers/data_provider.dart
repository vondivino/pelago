import 'package:flutter/material.dart';
import 'package:pelago/exports.dart';
import 'dart:math';

class DataProvider with ChangeNotifier {
  List<Destination> _currentData = [];
  List<Destination> _loadedData = [];
  List<Destination> get data => _currentData;
  PelagoApi _api = PelagoApi();

  Future loadData() async {
    _loadedData = await _api.getJson();
    await fetchForMatch();
    // print('initialized...');
    notifyListeners();
  }

  void fetchAllData() {
    _currentData = _loadedData;
    // notifyListeners();
  }

  void fetchByCategory(String categoryCode) {
    List<Destination> _results = [];
    for (var item in _loadedData.toList()) {
      if (item.categoryCode == categoryCode) _results.add(item);
    }
    _currentData = _results;
    // notifyListeners();
  }

  void emptyData() {
    _currentData = [];
    notifyListeners();
  }

  Future fetchForMatch() async {
    Random rnd = new Random();
    // print('loaded data length: ${_loadedData.length}');
    List<Destination> _results = [];
    try {
      for (var i = 0; i < 10; i++) {
        _results.add(_loadedData[rnd.nextInt(_loadedData.length)]);
      }
    } catch (e) {
      print(e);
    }

    _currentData = _results;
    notifyListeners();
  }
}
