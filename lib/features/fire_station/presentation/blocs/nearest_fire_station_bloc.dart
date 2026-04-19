import 'package:fire_ping/features/fire_station/domain/entities/nearest_fire_station.dart';
import 'package:fire_ping/features/fire_station/domain/usecases/find_nearest_fire_station_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'nearest_fire_station_event.dart';
part 'nearest_fire_station_state.dart';
part 'nearest_fire_station_bloc.freezed.dart';

class NearestFireStationBloc
    extends Bloc<NearestFireStationEvent, NearestFireStationState> {
  NearestFireStationBloc({
    required FindNearestFireStationUseCase findNearestFireStation,
  }) : _findNearestFireStation = findNearestFireStation,
       super(const NearestFireStationState.initial()) {
    on<_FindNearest>(_onFindNearest);
  }

  final FindNearestFireStationUseCase _findNearestFireStation;

  Future<void> _onFindNearest(
    _FindNearest event,
    Emitter<NearestFireStationState> emit,
  ) async {
    emit(const NearestFireStationState.loading());

    final result = await _findNearestFireStation(
      LocationParams(lat: event.lat, lng: event.lng),
    );

    result.fold(
      (failure) =>
          emit(NearestFireStationState.failure(failure.message)),
      (nearestStations) =>
          emit(NearestFireStationState.success(nearestStations)),
    );
  }
}
