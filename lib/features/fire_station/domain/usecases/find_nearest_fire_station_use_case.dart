import 'package:fire_ping/core/shared/utils/typedefs.dart';
import 'package:fire_ping/core/usecase/usecase.dart';
import 'package:fire_ping/features/fire_station/domain/entities/nearest_fire_station.dart';
import 'package:fire_ping/features/fire_station/domain/repositories/fire_station_repository.dart';

class FindNearestFireStationUseCase
    implements UseCase<List<NearestFireStation>, LocationParams> {
  const FindNearestFireStationUseCase({required this.repository});

  final FireStationRepository repository;

  @override
  ResultFuture<List<NearestFireStation>> call(
    LocationParams params,
  ) async {
    return repository.findNearestFireStations(
      lat: params.lat,
      lng: params.lng,
    );
  }
}

class LocationParams {
  const LocationParams({required this.lat, required this.lng});

  final double lat;
  final double lng;
}
