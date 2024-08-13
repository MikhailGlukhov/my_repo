part of 'fire_store_bloc.dart';

@freezed
class FireStoreEvent with _$FireStoreEvent {
  const factory FireStoreEvent.load() = FireStoreLoadEvent;
  const factory FireStoreEvent.save(String title,int roundTime  ) = FireStoreSaveEvent;
  const factory FireStoreEvent.delete(String uid) = FireStoreDeleteEvent;
  const factory FireStoreEvent.update(String uid, bool isCompleted) = FireStoreUpdateEvent;

}