import 'package:fire_ping/core/shared/utils/typedefs.dart';
import 'package:fire_ping/core/usecase/usecase.dart';
import 'package:fire_ping/features/fire_station/domain/entities/fire_station.dart';
import 'package:fire_ping/features/fire_station/domain/repositories/fire_station_repository.dart';

class GetFireStationsUseCase
    implements UseCaseWithoutParams<List<FireStation>> {
  const GetFireStationsUseCase({required this.repository});

  final FireStationRepository repository;

  @override
  ResultFuture<List<FireStation>> call() async {
    return repository.getFireStations();
  }
}
