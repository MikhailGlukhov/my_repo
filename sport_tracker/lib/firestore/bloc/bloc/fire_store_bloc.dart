import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sport_tracker/firestore/firestore.dart';


part 'fire_store_event.dart';
part 'fire_store_state.dart';
part 'fire_store_bloc.freezed.dart';

class FireStoreBloc extends Bloc<FireStoreEvent, FireStoreState> {
  
final FirestoreRepository firestore;
 //final List<SportTrack> tracks;
  FireStoreBloc(this.firestore,) : super(const FireStoreInitialState()) {
    
    
       on<FireStoreLoadEvent>((event, emit) async {
      
      emit(const FireStoreLoadingState());
      await FirestoreRepository().listSportTrack().first;
      
      emit( const FireStoreSavedState( ));
    });

    on<FireStoreUpdateEvent>((event, emit) async {
      
      
      await FirestoreRepository().upDateDb(event.uid, event.isCompleted);
     emit( const FireStoreSuccessState());
    });


    on<FireStoreSaveEvent>((event, emit) async {
      emit(const FireStoreLoadingState());
      await FirestoreRepository().addToDb(event.title,false, event.roundTime, event.restTime, event.rounds);
      emit( const FireStoreSuccessState());
    });

    on<FireStoreDeleteEvent>((event, emit) async {
      await FirestoreRepository().deleteFromDb(event.uid);
      emit( const FireStoreSuccessState());
    });
  }
}
