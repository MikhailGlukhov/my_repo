

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_hotel/internal/locator.dart';
import 'package:test_hotel/domain/service/api_hotel_service.dart';

part 'hotel_event.dart';
part 'hotel_state.dart';
part 'hotel_bloc.freezed.dart';

class HotelBloc extends Bloc<HotelEvent, HotelState> {
  HotelBloc() : super(const HotelState.succes()) {
    on<HotelEvent>((event, emit) async{
      
      try {
      locator.get<ApiHotelService>().getHotels();
        emit(const HotelState.succes());
      } catch (e) {
        emit(const HotelState.error());
        
      }
    });
  }
}
