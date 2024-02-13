import 'package:dartz/dartz.dart';
import 'package:logger/logger.dart';
import 'package:travel_app_riverpod/core/failure.dart';
import 'package:travel_app_riverpod/core/locator.dart';
import 'package:travel_app_riverpod/features/trip/data/datasources/local_data_source/i_trip_local_data_source.dart';
import 'package:travel_app_riverpod/features/trip/data/models/trip_model.dart';
import 'package:travel_app_riverpod/features/trip/domain/entities/trip.dart';
import 'package:travel_app_riverpod/features/trip/domain/repositories/i_trip_repository.dart';

class TripRepository implements ITripRepository {
  final _localDataSource = locator<ITripLocalDataSource>();
  final _logger = Logger();
  @override
  Future<Either<Failure, void>> createTrip(Trip trip) async {
    try {
      await _localDataSource.createTrip(TripModel.fromEntity(trip));
      return const Right(null);
    } catch (e) {
      _logger.e(e);
      return Left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> deleteTrip({required String id}) async {
    try {
      await _localDataSource.deleteTrip(id: id);
      return const Right(null);
    } catch (e) {
      _logger.e(e);
      return Left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Trip>> getTrip({required String id}) {
    // TODO: implement getTrip
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Trip>>> getTrips() async {
    try {
      final trips = await _localDataSource.getTrips();
      return Right(trips.map((e) => e.toEntity()).toList());
    } catch (e) {
      _logger.e(e);
      return Left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Trip>> updateTrip(Trip trip) {
    // TODO: implement updateTrip
    throw UnimplementedError();
  }
}
