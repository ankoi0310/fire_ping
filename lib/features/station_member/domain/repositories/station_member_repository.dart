import 'package:fire_ping/core/shared/utils/typedefs.dart';
import 'package:fire_ping/features/station_member/domain/entities/station_member.dart';

abstract class StationMemberRepository {
  ResultFuture<List<StationMember>> getStationMembers(
    String stationId,
  );
  ResultFuture<String?> getCurrentUserStationId();
}
