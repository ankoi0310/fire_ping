import 'package:fire_ping/features/fire_station/data/models/fire_station_model.dart';
import 'package:fire_ping/features/fire_station/domain/entities/fire_station.dart';

extension FireStationMapper on FireStationModel {
  FireStation toEntity() {
    return FireStation(
      id: id,
      name: name,
      phone: phone,
      addressText: addressText,
      lat: lat,
      lng: lng,
      location: location,
      isActive: isActive,
    );
  }
}
