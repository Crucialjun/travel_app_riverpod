import 'package:travel_app_riverpod/features/trip/data/models/trip_model.dart';

abstract class ITripLocalDataSource{

  Future<List<TripModel>> getTrips();
  Future<TripModel> getTrip({required String id});
  Future<void> createTrip(TripModel trip);
  Future<TripModel> updateTrip(TripModel trip);
  Future<void> deleteTrip({required String id});

}