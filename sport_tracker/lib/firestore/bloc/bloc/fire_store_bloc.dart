import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sport_tracker/firestore/firestore.dart';

part 'fire_store_event.dart';
part 'fire_store_state.dart';
part 'fire_store_bloc.freezed.dart';

class FireStoreBloc extends Bloc<FireStoreEvent, FireStoreState> {
final FirestoreRepository firestore;
  FireStoreBloc(this.firestore) : super(const _FireStoreInitialState()) {
    on<FireStoreSaveEvent>((event, emit) async {
      await FirestoreRepository().addToDb(event.title);
      emit(const _FireStoreSavedState());
    });

    on<FireStoreDeleteEvent>((event, emit) async {
      await FirestoreRepository().deleteFromDb(event.uid);
      emit(const _FireStoreDelitedState());
    });
  }
}
