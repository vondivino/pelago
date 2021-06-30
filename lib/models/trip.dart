import '../exports.dart';

class Trip {
  final String title;
  final String description;
  final List<Destination> relatedDestinations;
  final String image = 'https://images.unsplash.com/photo-1518086126454-f3fd26553c43?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1953&q=80';

  Trip({
    required this.title,
    required this.description,
    required this.relatedDestinations,
  });
}
