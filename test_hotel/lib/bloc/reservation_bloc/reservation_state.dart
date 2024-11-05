part of 'reservation_bloc.dart';

@freezed
class ReservationState with _$ReservationState {

  const factory ReservationState.succes() = _ReservationSucceslState;
  const factory ReservationState.error() = _ReservationErrorState;

}
