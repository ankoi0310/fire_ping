import 'package:fire_ping/core/shared/utils/typedefs.dart';
import 'package:fire_ping/core/usecase/usecase.dart';
import 'package:fire_ping/features/station_member/domain/entities/station_member.dart';
import 'package:fire_ping/features/station_member/domain/repositories/station_member_repository.dart';

class GetStationMembersUseCase
    implements UseCase<List<StationMember>, String> {
  const GetStationMembersUseCase({required this.repository});

  final StationMemberRepository repository;

  @override
  ResultFuture<List<StationMember>> call(String stationId) async {
    return repository.getStationMembers(stationId);
  }
}
