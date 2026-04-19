import 'package:fire_ping/features/fire_station/domain/entities/fire_station.dart';
import 'package:fire_ping/features/fire_station/domain/usecases/get_fire_stations_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fire_station_event.dart';

part 'fire_station_state.dart';

part 'fire_station_bloc.freezed.dart';

class FireStationBloc
    extends Bloc<FireStationEvent, FireStationState> {
  FireStationBloc({required GetFireStationsUseCase getFireStations})
    : _getFireStations = getFireStations,
      super(const FireStationState.initial()) {
    on<_FetchFireStations>(_onFetchFireStations);

    // Fetch fire stations immediately on bloc creation
    add(const FireStationEvent.fetchFireStations());
  }

  final GetFireStationsUseCase _getFireStations;

  Future<void> _onFetchFireStations(
    _FetchFireStations event,
    Emitter<FireStationState> emit,
  ) async {
    emit(const FireStationState.loading());

    final result = await _getFireStations();

    result.fold(
      (failure) => emit(FireStationState.failure(failure.message)),
      (fireStations) => emit(FireStationState.success(fireStations)),
    );
  }
}
