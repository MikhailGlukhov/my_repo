part of 'fire_store_bloc.dart';

@freezed
class FireStoreState with _$FireStoreState {
  const factory FireStoreState.initial() = FireStoreInitialState;
  const factory FireStoreState.loading() = FireStoreLoadingState;
  const factory FireStoreState.success() = FireStoreSuccessState;
  const factory FireStoreState.saved() = FireStoreSavedState;


 
}
