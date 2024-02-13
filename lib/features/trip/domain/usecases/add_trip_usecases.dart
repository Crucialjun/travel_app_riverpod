import 'package:dartz/dartz.dart';
import 'package:travel_app_riverpod/core/failure.dart';
import 'package:travel_app_riverpod/core/locator.dart';
import 'package:travel_app_riverpod/core/usecase.dart';
import 'package:travel_app_riverpod/features/trip/domain/entities/trip.dart';
import 'package:travel_app_riverpod/features/trip/domain/repositories/i_trip_repository.dart';

class AddTripUsecase with UseCases<Either<Failure,void>,Trip>{
  final _repo = locator<ITripRepository>();
  @override
  Future<Either<Failure, void>> call(Trip params) async {
    return await _repo.createTrip(params);
  }
  
}