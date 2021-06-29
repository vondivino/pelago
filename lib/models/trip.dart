import '../exports.dart';

class Trip {
  final String title;
  final String description;
  final List<Destination> relatedDestinations;
  final String image;

  Trip({
    required this.title,
    required this.description,
    required this.relatedDestinations,
    required this.image,
  });
}
