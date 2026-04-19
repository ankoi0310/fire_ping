part of 'station_member_bloc.dart';

@freezed
abstract class StationMemberEvent with _$StationMemberEvent {
  const factory StationMemberEvent.fetchStationMembers({
    required String stationId,
  }) = _FetchStationMembers;
}
