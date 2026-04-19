import 'package:fire_ping/core/shared/utils/typedefs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fire_station_model.freezed.dart';
part 'fire_station_model.g.dart';

@freezed
abstract class FireStationModel with _$FireStationModel {
  const factory FireStationModel({
    required int id,
    required String name,
    required String phone,
    @JsonKey(name: 'address_text') required String addressText,
    required double lat,
    required double lng,
    required String location,
    @JsonKey(name: 'is_active') required bool isActive,
  }) = _FireStationModel;

  factory FireStationModel.fromJson(JsonData json) =>
      _$FireStationModelFromJson(json);
}
