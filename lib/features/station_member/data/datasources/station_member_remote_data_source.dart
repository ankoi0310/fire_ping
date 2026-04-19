import 'package:fire_ping/core/error/exceptions.dart';
import 'package:fire_ping/features/station_member/data/models/station_member_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract class StationMemberRemoteDataSource {
  Future<List<StationMemberModel>> getStationMembers(
    String stationId,
  );
}

class StationMemberRemoteDataSourceImpl
    implements StationMemberRemoteDataSource {
  const StationMemberRemoteDataSourceImpl({required this.client});

  final SupabaseClient client;

  @override
  Future<List<StationMemberModel>> getStationMembers(
    String stationId,
  ) async {
    try {
      final response = await client
          .from('station_members')
          .select('''
            id,
            user_id,
            station_id,
            role,
            is_active,
            created_at,
            profiles:user_id (
              full_name,
              avatar_url
            )
          ''')
          .eq('station_id', stationId)
          .eq('is_active', true);

      return response
          .map<StationMemberModel>(StationMemberModel.fromJson)
          .toList();
    } catch (e) {
      throw ServerException('Failed to fetch station members: $e');
    }
  }
}
