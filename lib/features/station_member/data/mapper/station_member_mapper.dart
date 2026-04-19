import 'package:fire_ping/features/station_member/data/models/station_member_model.dart';
import 'package:fire_ping/features/station_member/domain/entities/station_member.dart';

extension StationMemberMapper on StationMemberModel {
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
