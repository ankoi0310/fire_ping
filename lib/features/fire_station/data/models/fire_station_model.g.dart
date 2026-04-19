// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fire_station_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FireStationModel _$FireStationModelFromJson(Map<String, dynamic> json) =>
    _FireStationModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      phone: json['phone'] as String,
      addressText: json['address_text'] as String,
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
      location: json['location'] as String,
      isActive: json['is_active'] as bool,
    );

Map<String, dynamic> _$FireStationModelToJson(_FireStationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'address_text': instance.addressText,
      'lat': instance.lat,
      'lng': instance.lng,
      'location': instance.location,
      'is_active': instance.isActive,
    };
