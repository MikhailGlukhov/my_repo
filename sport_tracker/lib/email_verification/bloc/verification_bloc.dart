
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sport_tracker/auth/auth_repository.dart';

part 'verification_event.dart';
part 'verification_state.dart';
part 'verification_bloc.freezed.dart';

class VerificationBloc extends Bloc<VerificationEvent, VerificationState> {
  final AuthRepository authRepository;
  VerificationBloc(this.authRepository) : super(const VerificationState.initial()) {
    on<VerificationSentEmailEvent>((event, emit)  async{
      emit(const VerificationState.inProcess());
      
      await authRepository.sendEmailVerification();
      
  
      emit(const VerificationState.sentEmail());
    });
  }
}