part of 'nearest_fire_station_bloc.dart';

@freezed
class NearestFireStationState with _$NearestFireStationState {
  const factory NearestFireStationState.initial() = _Initial;
  const factory NearestFireStationState.loading() = _Loading;
  const factory NearestFireStationState.success(
    List<NearestFireStation> nearestStations,
  ) = _Success;
  const factory NearestFireStationState.failure(String message) =
      _Failure;
}
