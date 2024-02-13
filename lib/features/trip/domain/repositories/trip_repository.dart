import 'package:dartz/dartz.dart';
import 'package:travel_app_riverpod/core/failure.dart';
import 'package:travel_app_riverpod/features/trip/domain/entities/trip.dart';
import 'package:travel_app_riverpod/features/trip/domain/repositories/i_trip_repository.dart';

class TripRepository implements ITripRepository {
  @override
  Future<Either<Failure, Trip>> createTrip(Trip trip) {
    // TODO: implement createTrip
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> deleteTrip({required String id}) {
    // TODO: implement deleteTrip
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Trip>> getTrip({required String id}) {
    // TODO: implement getTrip
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Trip>>> getTrips() {
    // TODO: implement getTrips
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Trip>> updateTrip(Trip trip) {
    // TODO: implement updateTrip
    throw UnimplementedError();
  }
}
