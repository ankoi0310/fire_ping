import 'package:fire_ping/features/fire_station/data/models/nearest_fire_station_model.dart';
import 'package:fire_ping/features/fire_station/domain/entities/nearest_fire_station.dart';

extension NearestFireStationMapper on NearestFireStationModel {
  NearestFireStation toEntity() {
    return NearestFireStation(id: id, name: name, distance: distance);
  }
}
