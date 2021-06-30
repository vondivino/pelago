import 'dart:collection';

import '../exports.dart';

class MatcherService {
  Map score = {
    'AT': 0,
    'FD': 0,
    'ST': 0,
    'GE': 0,
    'AD': 0,
    'CU': 0,
  };

  void addScore(Destination item) {
    String code = item.categoryCode;
    score[code] += 1;
  }

  dynamic getHighScore() {
    final sorted = SplayTreeMap.from(score, (key1, key2) => score[key1].compareTo(score[key2]));
    return sorted.keys.last;
  }

  void resetScore() {
    for (var code in score.keys) {
      score[code] = 0;
    }
  }
}
