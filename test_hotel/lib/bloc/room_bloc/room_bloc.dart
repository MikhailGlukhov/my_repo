import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_hotel/internal/locator.dart';
import 'package:test_hotel/domain/service/api_hotel_service.dart';

part 'room_event.dart';
part 'room_state.dart';
part 'room_bloc.freezed.dart';

class RoomBloc extends Bloc<RoomEvent, RoomState> {
  RoomBloc() : super(const RoomState.succes()) {
    on<RoomEvent>((event, emit) {
      try {
        locator.get<ApiHotelService>().getRooms();
        emit(const RoomState.succes());
      } catch (e) {
        emit(const RoomState.error());
      }
    });
  }
}
