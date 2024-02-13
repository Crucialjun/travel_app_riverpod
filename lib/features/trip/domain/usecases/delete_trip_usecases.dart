import 'package:dartz/dartz.dart';
import 'package:travel_app_riverpod/core/failure.dart';
import 'package:travel_app_riverpod/core/locator.dart';
import 'package:travel_app_riverpod/core/usecase.dart';

import 'package:travel_app_riverpod/features/trip/domain/repositories/i_trip_repository.dart';

class DeleteTripUseCase with UseCases<Either<Failure, void>,String>{
  final _repo = locator<ITripRepository>();
  @override
  Future<Either<Failure, void>> call(String params) {
    return _repo.deleteTrip(id: params);
  }

}