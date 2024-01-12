import 'package:dartz/dartz.dart';
import 'package:travel_app_riverpod/core/failure.dart';
import 'package:travel_app_riverpod/features/trip/domain/entities/trip.dart';

abstract class TripRepository {
  Future<Either<Failure, List<Trip>>> getTrips();
  Future<Either<Failure, Trip>> getTrip(String id);
  Future<Either<Failure, Trip>> createTrip(Trip trip);
  Future<Either<Failure, Trip>> updateTrip(Trip trip);
  Future<Either<Failure, Trip>> deleteTrip(String id);
}