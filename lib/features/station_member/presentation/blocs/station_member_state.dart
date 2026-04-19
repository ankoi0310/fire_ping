part of 'station_member_bloc.dart';

@freezed
abstract class StationMemberState with _$StationMemberState {
  const factory StationMemberState.initial() = _Initial;

  const factory StationMemberState.loading() = _Loading;

  const factory StationMemberState.success(
    List<StationMember> members,
  ) = _Success;

  const factory StationMemberState.failure(String message) = _Failure;
}
