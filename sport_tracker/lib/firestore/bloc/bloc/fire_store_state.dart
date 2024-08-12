part of 'fire_store_bloc.dart';

@freezed
class FireStoreState with _$FireStoreState {
  const factory FireStoreState.initial() = _FireStoreInitialState;
  const factory FireStoreState.saved() = _FireStoreSavedState;
  const factory FireStoreState.delited() = _FireStoreDelitedState;
}
