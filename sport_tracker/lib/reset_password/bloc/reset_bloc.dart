import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fireauth/fireauth.dart';

part 'reset_event.dart';
part 'reset_state.dart';
part 'reset_bloc.freezed.dart';


class ResetBloc extends Bloc<ResetEvent, ResetState> {
  final AuthRepository authRepository;
  ResetBloc(this.authRepository) : super(const ResetState.initial()) {
    on<ResetSendingEmailEvent>((event, emit) async{
      await authRepository.resetPassword(email: event.email);
      emit(const ResetState.succes());
    });
  }
}