import 'package:fire_ping/core/error/exceptions.dart';
import 'package:fire_ping/core/error/failure.dart';
import 'package:fire_ping/core/shared/utils/typedefs.dart';
import 'package:fire_ping/features/fire_station/data/datasources/fire_station_remote_data_source.dart';
import 'package:fire_ping/features/fire_station/data/mapper/fire_station_mapper.dart';
import 'package:fire_ping/features/fire_station/data/mapper/nearest_fire_station_mapper.dart';
import 'package:fire_ping/features/fire_station/domain/entities/fire_station.dart';
import 'package:fire_ping/features/fire_station/domain/entities/nearest_fire_station.dart';
import 'package:fire_ping/features/fire_station/domain/repositories/fire_station_repository.dart';
import 'package:fpdart/fpdart.dart';

class FireStationRepositoryImpl implements FireStationRepository {
  const FireStationRepositoryImpl({required this.remoteDataSource});

  final FireStationRemoteDataSource remoteDataSource;

  @override
  ResultFuture<List<FireStation>> getFireStations() async {
    try {
      final list = await remoteDataSource.getFireStations();
      return Right(list.map((item) => item.toEntity()).toList());
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }

  @override
  ResultFuture<List<NearestFireStation>> findNearestFireStations({
    required double lat,
    required double lng,
  }) async {
    try {
      final list = await remoteDataSource.findNearestStations(
        lat: lat,
        lng: lng,
      );
      return Right(list.map((item) => item.toEntity()).toList());
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }
}
