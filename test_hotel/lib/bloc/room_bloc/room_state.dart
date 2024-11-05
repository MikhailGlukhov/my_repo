part of 'room_bloc.dart';

@freezed
class RoomState with _$RoomState {
  
  const factory RoomState.succes() = _RoomSuccesState;
  const factory RoomState.error() = _RoomErrorState;
}
