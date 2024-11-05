import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_hotel/internal/locator.dart';
import 'package:test_hotel/domain/service/api_hotel_service.dart';

part 'reservation_event.dart';
part 'reservation_state.dart';
part 'reservation_bloc.freezed.dart';

class ReservationBloc extends Bloc<ReservationEvent, ReservationState> {
  ReservationBloc() : super(const ReservationState.succes()) {
    on<ReservationEvent>((event, emit) {
     try {
       locator.get<ApiHotelService>().getReservations();
       emit(const ReservationState.succes());
     } catch (e) {
      emit(const ReservationState.error());
       
     }
    });
  }
}
