part of 'room_bloc.dart';

@freezed
class RoomEvent with _$RoomEvent {
  const factory RoomEvent.getRooms() = _RoomGetRoomsEvent;
}