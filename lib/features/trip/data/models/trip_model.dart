@Hive
class TripModel {
  final String title;
  final List<String> images;
  final String description;
  final DateTime date;
  final String location;

  TripModel(
      {required this.title,
      required this.images,
      required this.description,
      required this.date,
      required this.location});
}
