part  of 'verification_bloc.dart';

@freezed
class VerificationEvent with _$VerificationEvent{
  const factory VerificationEvent.sendEmailVerification() = VerificationSentEmailEvent;
}