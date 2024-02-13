import 'package:dartz/dartz.dart';
import 'package:travel_app_riverpod/core/failure.dart';
import 'package:travel_app_riverpod/features/trip/domain/entities/trip.dart';

abstract class ITripRepository {
  Future<Either<Failure, List<Trip>>> getTrips();
  Future<Either<Failure, Trip>> getTrip({required String id});
  Future<Either<Failure, void>> createTrip(Trip trip);
  Future<Either<Failure, Trip>> updateTrip(Trip trip);
  Future<Either<Failure, void>> deleteTrip({required String id});
}
