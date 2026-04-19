import 'package:fire_ping/features/station_member/domain/entities/station_member.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'station_member_model.freezed.dart';
part 'station_member_model.g.dart';

@freezed
abstract class StationMemberModel with _$StationMemberModel {
  const factory StationMemberModel({
    required String id,
    required String userId,
    required String stationId,
    required String role,
    required bool isActive,
    required DateTime createdAt,
  }) = _StationMemberModel;

  factory StationMemberModel.fromJson(Map<String, dynamic> json) =>
      _$StationMemberModelFromJson(json);
}

extension StationMemberModelX on StationMemberModel {
  StationMember toEntity() {
    return StationMember(
      id: id,
      userId: userId,
      stationId: stationId,
      role: role,
      isActive: isActive,
      createdAt: createdAt,
    );
  }
}
