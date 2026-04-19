import 'package:fire_ping/core/shared/utils/typedefs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'nearest_fire_station_model.freezed.dart';
part 'nearest_fire_station_model.g.dart';

@freezed
abstract class NearestFireStationModel
    with _$NearestFireStationModel {
  const factory NearestFireStationModel({
    required int id,
    required String name,
    required double distance,
  }) = _NearestFireStationModel;

  factory NearestFireStationModel.fromJson(JsonData json) =>
      _$NearestFireStationModelFromJson(json);
}
