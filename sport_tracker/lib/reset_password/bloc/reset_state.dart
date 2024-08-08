part of 'reset_bloc.dart';

@freezed
class ResetState with _$ResetState {
  const factory ResetState.initial() = _ResetInitialState;
  const factory ResetState.succes() = _ResetSuccesState;
}