

import 'package:get_it/get_it.dart';
import 'package:travel_app_riverpod/features/trip/domain/repositories/i_trip_repository.dart';
import 'package:travel_app_riverpod/features/trip/domain/repositories/trip_repository.dart';

final locator = GetIt.instance;

Future setUpLocator() async {
  locator.registerLazySingleton<ITripRepository>(() => TripRepository());
}
