part of 'fire_store_bloc.dart';

@freezed
class FireStoreEvent with _$FireStoreEvent {
  const factory FireStoreEvent.save(String title) = FireStoreSaveEvent;
  const factory FireStoreEvent.delete(String uid) = FireStoreDeleteEvent;

}