part of 'nearest_fire_station_bloc.dart';

@freezed
abstract class NearestFireStationEvent
    with _$NearestFireStationEvent {
  const factory NearestFireStationEvent.findNearest({
    required double lat,
    required double lng,
  }) = _FindNearest;
}
