import 'package:freezed_annotation/freezed_annotation.dart';

part 'station_member.freezed.dart';

@freezed
abstract class StationMember with _$StationMember {
  const factory StationMember({
    required String id,
    required String userId,
    required String stationId,
    required String role,
    required bool isActive,
    required DateTime createdAt,
  }) = _StationMember;
}
