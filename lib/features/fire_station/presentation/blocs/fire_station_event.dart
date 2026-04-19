part of 'fire_station_bloc.dart';

@freezed
class FireStationEvent with _$FireStationEvent {
  const factory FireStationEvent.fetchFireStations() =
      _FetchFireStations;
}
