import '../exports.dart';

class Destination {
  final String title;
  final String category;
  final String guideLanguage;
  final List<Review> reviews;

  Destination({
    required this.title,
    required this.category,
    required this.guideLanguage,
    required this.reviews,
  });
}
