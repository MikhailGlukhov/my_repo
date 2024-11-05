part of 'hotel_bloc.dart';

@freezed
 class HotelState with _$HotelState{
  const factory HotelState.succes() = _HotelSuccesState;
  const factory HotelState.error() = _HotelErrorState;
 }


