import 'package:dartz/dartz.dart';
import 'package:travel_app_riverpod/core/failure.dart';
import 'package:travel_app_riverpod/core/locator.dart';
import 'package:travel_app_riverpod/core/usecase.dart';
import 'package:travel_app_riverpod/features/trip/domain/entities/trip.dart';
import 'package:travel_app_riverpod/features/trip/domain/repositories/i_trip_repository.dart';

class GetTripsUsecase with UseCases<Either<Failure, List<Trip>>, NoParams> {
  final _repo = locator<ITripRepository>();
  @override
  Future<Either<Failure, List<Trip>>> call(NoParams params) async {
    return _repo.getTrips();
  }
}
