part of 'fire_station_bloc.dart';

@freezed
class FireStationState with _$FireStationState {
  const factory FireStationState.initial() = _Initial;
  const factory FireStationState.loading() = _Loading;
  const factory FireStationState.success(
    List<FireStation> fireStations,
  ) = _Success;
  const factory FireStationState.failure(String message) = _Failure;
}
