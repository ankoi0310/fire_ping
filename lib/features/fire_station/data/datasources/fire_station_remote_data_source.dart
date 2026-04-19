import 'package:fire_ping/core/error/exceptions.dart';
import 'package:fire_ping/core/shared/utils/typedefs.dart';
import 'package:fire_ping/features/fire_station/data/models/fire_station_model.dart';
import 'package:fire_ping/features/fire_station/data/models/nearest_fire_station_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract class FireStationRemoteDataSource {
  Future<List<FireStationModel>> getFireStations();

  Future<List<NearestFireStationModel>> findNearestStations({
    required double lat,
    required double lng,
  });
}

class FireStationRemoteDataSourceImpl
    implements FireStationRemoteDataSource {
  const FireStationRemoteDataSourceImpl({required this.client});

  final SupabaseClient client;

  @override
  Future<List<FireStationModel>> getFireStations() async {
    try {
      final response = await client
          .from('fire_stations')
          .select(
            'id, name, phone, address_text, lat, lng, location, is_active',
          );

      return response
          .map<FireStationModel>(FireStationModel.fromJson)
          .toList();
    } catch (e) {
      throw ServerException('Failed to fetch fire stations');
    }
  }

  @override
  Future<List<NearestFireStationModel>> findNearestStations({
    required double lat,
    required double lng,
  }) async {
    final response = await client.rpc<List<JsonData>>(
      'find_nearest_fire_station',
      params: {'user_lat': lat, 'user_lng': lng},
    );

    return response.map(NearestFireStationModel.fromJson).toList();
  }
}
