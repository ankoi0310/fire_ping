import 'package:fire_ping/core/shared/utils/typedefs.dart';
import 'package:fire_ping/features/fire_station/domain/entities/fire_station.dart';
import 'package:fire_ping/features/fire_station/domain/entities/nearest_fire_station.dart';

abstract class FireStationRepository {
  ResultFuture<List<FireStation>> getFireStations();

  ResultFuture<List<NearestFireStation>> findNearestFireStations({
    required double lat,
    required double lng,
  });
}
