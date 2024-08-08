part of 'reset_bloc.dart';

@freezed
class ResetEvent with _$ResetEvent {
  const factory ResetEvent.sendingEmail(String email) = ResetSendingEmailEvent;
}