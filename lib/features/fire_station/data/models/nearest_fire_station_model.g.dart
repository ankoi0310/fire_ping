// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nearest_fire_station_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NearestFireStationModel _$NearestFireStationModelFromJson(
  Map<String, dynamic> json,
) => _NearestFireStationModel(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  distance: (json['distance'] as num).toDouble(),
);

Map<String, dynamic> _$NearestFireStationModelToJson(
  _NearestFireStationModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'distance': instance.distance,
};
