// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VerificationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() sendEmailVerification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? sendEmailVerification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? sendEmailVerification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VerificationSentEmailEvent value)
        sendEmailVerification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VerificationSentEmailEvent value)? sendEmailVerification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerificationSentEmailEvent value)? sendEmailVerification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerificationEventCopyWith<$Res> {
  factory $VerificationEventCopyWith(
          VerificationEvent value, $Res Function(VerificationEvent) then) =
      _$VerificationEventCopyWithImpl<$Res, VerificationEvent>;
}

/// @nodoc
class _$VerificationEventCopyWithImpl<$Res, $Val extends VerificationEvent>
    implements $VerificationEventCopyWith<$Res> {
  _$VerificationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$VerificationSentEmailEventImplCopyWith<$Res> {
  factory _$$VerificationSentEmailEventImplCopyWith(
          _$VerificationSentEmailEventImpl value,
          $Res Function(_$VerificationSentEmailEventImpl) then) =
      __$$VerificationSentEmailEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VerificationSentEmailEventImplCopyWithImpl<$Res>
    extends _$VerificationEventCopyWithImpl<$Res,
        _$VerificationSentEmailEventImpl>
    implements _$$VerificationSentEmailEventImplCopyWith<$Res> {
  __$$VerificationSentEmailEventImplCopyWithImpl(
      _$VerificationSentEmailEventImpl _value,
      $Res Function(_$VerificationSentEmailEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$VerificationSentEmailEventImpl implements VerificationSentEmailEvent {
  const _$VerificationSentEmailEventImpl();

  @override
  String toString() {
    return 'VerificationEvent.sendEmailVerification()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerificationSentEmailEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() sendEmailVerification,
  }) {
    return sendEmailVerification();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? sendEmailVerification,
  }) {
    return sendEmailVerification?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? sendEmailVerification,
    required TResult orElse(),
  }) {
    if (sendEmailVerification != null) {
      return sendEmailVerification();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VerificationSentEmailEvent value)
        sendEmailVerification,
  }) {
    return sendEmailVerification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VerificationSentEmailEvent value)? sendEmailVerification,
  }) {
    return sendEmailVerification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerificationSentEmailEvent value)? sendEmailVerification,
    required TResult orElse(),
  }) {
    if (sendEmailVerification != null) {
      return sendEmailVerification(this);
    }
    return orElse();
  }
}

abstract class VerificationSentEmailEvent implements VerificationEvent {
  const factory VerificationSentEmailEvent() = _$VerificationSentEmailEventImpl;
}

/// @nodoc
mixin _$VerificationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProcess,
    required TResult Function() sentEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProcess,
    TResult? Function()? sentEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProcess,
    TResult Function()? sentEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VerificationInitialState value) initial,
    required TResult Function(_VerificationNotSentEmailState value) inProcess,
    required TResult Function(_VerificationSentEmailState value) sentEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VerificationInitialState value)? initial,
    TResult? Function(_VerificationNotSentEmailState value)? inProcess,
    TResult? Function(_VerificationSentEmailState value)? sentEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerificationInitialState value)? initial,
    TResult Function(_VerificationNotSentEmailState value)? inProcess,
    TResult Function(_VerificationSentEmailState value)? sentEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerificationStateCopyWith<$Res> {
  factory $VerificationStateCopyWith(
          VerificationState value, $Res Function(VerificationState) then) =
      _$VerificationStateCopyWithImpl<$Res, VerificationState>;
}

/// @nodoc
class _$VerificationStateCopyWithImpl<$Res, $Val extends VerificationState>
    implements $VerificationStateCopyWith<$Res> {
  _$VerificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$VerificationInitialStateImplCopyWith<$Res> {
  factory _$$VerificationInitialStateImplCopyWith(
          _$VerificationInitialStateImpl value,
          $Res Function(_$VerificationInitialStateImpl) then) =
      __$$VerificationInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VerificationInitialStateImplCopyWithImpl<$Res>
    extends _$VerificationStateCopyWithImpl<$Res,
        _$VerificationInitialStateImpl>
    implements _$$VerificationInitialStateImplCopyWith<$Res> {
  __$$VerificationInitialStateImplCopyWithImpl(
      _$VerificationInitialStateImpl _value,
      $Res Function(_$VerificationInitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$VerificationInitialStateImpl implements _VerificationInitialState {
  const _$VerificationInitialStateImpl();

  @override
  String toString() {
    return 'VerificationState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerificationInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProcess,
    required TResult Function() sentEmail,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProcess,
    TResult? Function()? sentEmail,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProcess,
    TResult Function()? sentEmail,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VerificationInitialState value) initial,
    required TResult Function(_VerificationNotSentEmailState value) inProcess,
    required TResult Function(_VerificationSentEmailState value) sentEmail,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VerificationInitialState value)? initial,
    TResult? Function(_VerificationNotSentEmailState value)? inProcess,
    TResult? Function(_VerificationSentEmailState value)? sentEmail,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerificationInitialState value)? initial,
    TResult Function(_VerificationNotSentEmailState value)? inProcess,
    TResult Function(_VerificationSentEmailState value)? sentEmail,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _VerificationInitialState implements VerificationState {
  const factory _VerificationInitialState() = _$VerificationInitialStateImpl;
}

/// @nodoc
abstract class _$$VerificationNotSentEmailStateImplCopyWith<$Res> {
  factory _$$VerificationNotSentEmailStateImplCopyWith(
          _$VerificationNotSentEmailStateImpl value,
          $Res Function(_$VerificationNotSentEmailStateImpl) then) =
      __$$VerificationNotSentEmailStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VerificationNotSentEmailStateImplCopyWithImpl<$Res>
    extends _$VerificationStateCopyWithImpl<$Res,
        _$VerificationNotSentEmailStateImpl>
    implements _$$VerificationNotSentEmailStateImplCopyWith<$Res> {
  __$$VerificationNotSentEmailStateImplCopyWithImpl(
      _$VerificationNotSentEmailStateImpl _value,
      $Res Function(_$VerificationNotSentEmailStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$VerificationNotSentEmailStateImpl
    implements _VerificationNotSentEmailState {
  const _$VerificationNotSentEmailStateImpl();

  @override
  String toString() {
    return 'VerificationState.inProcess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerificationNotSentEmailStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProcess,
    required TResult Function() sentEmail,
  }) {
    return inProcess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProcess,
    TResult? Function()? sentEmail,
  }) {
    return inProcess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProcess,
    TResult Function()? sentEmail,
    required TResult orElse(),
  }) {
    if (inProcess != null) {
      return inProcess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VerificationInitialState value) initial,
    required TResult Function(_VerificationNotSentEmailState value) inProcess,
    required TResult Function(_VerificationSentEmailState value) sentEmail,
  }) {
    return inProcess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VerificationInitialState value)? initial,
    TResult? Function(_VerificationNotSentEmailState value)? inProcess,
    TResult? Function(_VerificationSentEmailState value)? sentEmail,
  }) {
    return inProcess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerificationInitialState value)? initial,
    TResult Function(_VerificationNotSentEmailState value)? inProcess,
    TResult Function(_VerificationSentEmailState value)? sentEmail,
    required TResult orElse(),
  }) {
    if (inProcess != null) {
      return inProcess(this);
    }
    return orElse();
  }
}

abstract class _VerificationNotSentEmailState implements VerificationState {
  const factory _VerificationNotSentEmailState() =
      _$VerificationNotSentEmailStateImpl;
}

/// @nodoc
abstract class _$$VerificationSentEmailStateImplCopyWith<$Res> {
  factory _$$VerificationSentEmailStateImplCopyWith(
          _$VerificationSentEmailStateImpl value,
          $Res Function(_$VerificationSentEmailStateImpl) then) =
      __$$VerificationSentEmailStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VerificationSentEmailStateImplCopyWithImpl<$Res>
    extends _$VerificationStateCopyWithImpl<$Res,
        _$VerificationSentEmailStateImpl>
    implements _$$VerificationSentEmailStateImplCopyWith<$Res> {
  __$$VerificationSentEmailStateImplCopyWithImpl(
      _$VerificationSentEmailStateImpl _value,
      $Res Function(_$VerificationSentEmailStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$VerificationSentEmailStateImpl implements _VerificationSentEmailState {
  const _$VerificationSentEmailStateImpl();

  @override
  String toString() {
    return 'VerificationState.sentEmail()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerificationSentEmailStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProcess,
    required TResult Function() sentEmail,
  }) {
    return sentEmail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProcess,
    TResult? Function()? sentEmail,
  }) {
    return sentEmail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProcess,
    TResult Function()? sentEmail,
    required TResult orElse(),
  }) {
    if (sentEmail != null) {
      return sentEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VerificationInitialState value) initial,
    required TResult Function(_VerificationNotSentEmailState value) inProcess,
    required TResult Function(_VerificationSentEmailState value) sentEmail,
  }) {
    return sentEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VerificationInitialState value)? initial,
    TResult? Function(_VerificationNotSentEmailState value)? inProcess,
    TResult? Function(_VerificationSentEmailState value)? sentEmail,
  }) {
    return sentEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerificationInitialState value)? initial,
    TResult Function(_VerificationNotSentEmailState value)? inProcess,
    TResult Function(_VerificationSentEmailState value)? sentEmail,
    required TResult orElse(),
  }) {
    if (sentEmail != null) {
      return sentEmail(this);
    }
    return orElse();
  }
}

abstract class _VerificationSentEmailState implements VerificationState {
  const factory _VerificationSentEmailState() =
      _$VerificationSentEmailStateImpl;
}
