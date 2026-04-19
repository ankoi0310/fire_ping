import 'package:fire_ping/features/station_member/domain/entities/station_member.dart';
import 'package:fire_ping/features/station_member/domain/usecases/get_station_members_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'station_member_event.dart';
part 'station_member_state.dart';
part 'station_member_bloc.freezed.dart';

class StationMemberBloc
    extends Bloc<StationMemberEvent, StationMemberState> {
  StationMemberBloc({
    required GetStationMembersUseCase getStationMembers,
  }) : _getStationMembers = getStationMembers,
       super(const StationMemberState.initial()) {
    on<_FetchStationMembers>(_onFetchStationMembers);
  }

  final GetStationMembersUseCase _getStationMembers;

  Future<void> _onFetchStationMembers(
    _FetchStationMembers event,
    Emitter<StationMemberState> emit,
  ) async {
    emit(const StationMemberState.loading());

    final result = await _getStationMembers(event.stationId);

    result.fold(
      (failure) => emit(StationMemberState.failure(failure.message)),
      (members) => emit(StationMemberState.success(members)),
    );
  }
}
