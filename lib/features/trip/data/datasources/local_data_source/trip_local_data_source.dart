import 'package:travel_app_riverpod/constants/hive_box_names.dart';
import 'package:travel_app_riverpod/constants/hive_storage_keys.dart';
import 'package:travel_app_riverpod/core/locator.dart';
import 'package:travel_app_riverpod/features/trip/data/datasources/local_data_source/i_trip_local_data_source.dart';
import 'package:travel_app_riverpod/features/trip/data/models/trip_model.dart';
import 'package:travel_app_riverpod/services/local_storage_service/i_local_storage_service.dart';

class TripLocalDataSource implements ITripLocalDataSource {
  final _localStorageService = locator<ILocalStorageService>();
  @override
  Future<void> createTrip(TripModel trip) async {
    await _localStorageService.write(
      boxName: HiveBoxNames.trips,
      key: HiveStorageKeys.trips,
      value: trip,
      isList: true,
    );
  }

  @override
  Future<void> deleteTrip({required String id}) async {
    await _localStorageService.deleteRecord(
        boxName: HiveBoxNames.trips, index: int.parse(id));
  }

  @override
  Future<TripModel> getTrip({required String id}) {
    // TODO: implement getTrip
    throw UnimplementedError();
  }

  @override
  Future<List<TripModel>> getTrips() async {
    List<TripModel> trips = await _localStorageService.read(
            boxName: HiveBoxNames.trips, key: HiveStorageKeys.trips) ??
        [];
    return trips;
  }

  @override
  Future<TripModel> updateTrip(TripModel trip) {
    // TODO: implement updateTrip
    throw UnimplementedError();
  }
}
