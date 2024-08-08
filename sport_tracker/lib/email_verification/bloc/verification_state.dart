part of 'verification_bloc.dart';

@freezed
class VerificationState with _$VerificationState {
  const factory VerificationState.initial() = _VerificationInitialState;
  const factory VerificationState.inProcess() = _VerificationNotSentEmailState;
  const factory VerificationState.sentEmail() = _VerificationSentEmailState;

}
