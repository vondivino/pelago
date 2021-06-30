import '../exports.dart';

class Destination {
  final String title;
  final String category;
  final String description;
  final String expectation;
  final String image;
  final String categoryCode;
  final List<dynamic> other;
  final List<dynamic> highlights;

  Destination({
    required this.categoryCode,
    required this.image,
    required this.description,
    required this.expectation,
    required this.other,
    required this.highlights,
    required this.title,
    required this.category,
  });
}
