import 'package:hive/hive.dart';
import 'package:travel_app_riverpod/features/trip/domain/entities/trip.dart';

part 'trip_model.g.dart';

@HiveType(typeId: 0)
class TripModel {
  @HiveField(0)
  final String title;

  @HiveField(1)
  final List<String> images;

  @HiveField(2)
  final String description;

  @HiveField(3)
  final DateTime date;

  @HiveField(4)
  final String location;

  TripModel(
      {required this.title,
      required this.images,
      required this.description,
      required this.date,
      required this.location});

  factory TripModel.fromEntity(Trip trip) {
    return TripModel(
        title: trip.title,
        images: trip.images,
        description: trip.description,
        date: trip.date,
        location: trip.location);
  }

  Trip toEntity() {
    return Trip(
        title: title,
        images: images,
        description: description,
        date: date,
        location: location);
  }
}
