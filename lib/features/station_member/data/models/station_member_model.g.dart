// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'station_member_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StationMemberModel _$StationMemberModelFromJson(Map<String, dynamic> json) =>
    _StationMemberModel(
      id: json['id'] as String,
      userId: json['userId'] as String,
      stationId: json['stationId'] as String,
      role: json['role'] as String,
      isActive: json['isActive'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$StationMemberModelToJson(_StationMemberModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'stationId': instance.stationId,
      'role': instance.role,
      'isActive': instance.isActive,
      'createdAt': instance.createdAt.toIso8601String(),
    };
