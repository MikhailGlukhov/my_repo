// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reset_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ResetEvent {
  String get email => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) sendingEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? sendingEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? sendingEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResetSendingEmailEvent value) sendingEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResetSendingEmailEvent value)? sendingEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResetSendingEmailEvent value)? sendingEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResetEventCopyWith<ResetEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetEventCopyWith<$Res> {
  factory $ResetEventCopyWith(
          ResetEvent value, $Res Function(ResetEvent) then) =
      _$ResetEventCopyWithImpl<$Res, ResetEvent>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$ResetEventCopyWithImpl<$Res, $Val extends ResetEvent>
    implements $ResetEventCopyWith<$Res> {
  _$ResetEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResetSendingEmailEventImplCopyWith<$Res>
    implements $ResetEventCopyWith<$Res> {
  factory _$$ResetSendingEmailEventImplCopyWith(
          _$ResetSendingEmailEventImpl value,
          $Res Function(_$ResetSendingEmailEventImpl) then) =
      __$$ResetSendingEmailEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$ResetSendingEmailEventImplCopyWithImpl<$Res>
    extends _$ResetEventCopyWithImpl<$Res, _$ResetSendingEmailEventImpl>
    implements _$$ResetSendingEmailEventImplCopyWith<$Res> {
  __$$ResetSendingEmailEventImplCopyWithImpl(
      _$ResetSendingEmailEventImpl _value,
      $Res Function(_$ResetSendingEmailEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$ResetSendingEmailEventImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ResetSendingEmailEventImpl implements ResetSendingEmailEvent {
  const _$ResetSendingEmailEventImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'ResetEvent.sendingEmail(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetSendingEmailEventImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetSendingEmailEventImplCopyWith<_$ResetSendingEmailEventImpl>
      get copyWith => __$$ResetSendingEmailEventImplCopyWithImpl<
          _$ResetSendingEmailEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) sendingEmail,
  }) {
    return sendingEmail(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? sendingEmail,
  }) {
    return sendingEmail?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? sendingEmail,
    required TResult orElse(),
  }) {
    if (sendingEmail != null) {
      return sendingEmail(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResetSendingEmailEvent value) sendingEmail,
  }) {
    return sendingEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResetSendingEmailEvent value)? sendingEmail,
  }) {
    return sendingEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResetSendingEmailEvent value)? sendingEmail,
    required TResult orElse(),
  }) {
    if (sendingEmail != null) {
      return sendingEmail(this);
    }
    return orElse();
  }
}

abstract class ResetSendingEmailEvent implements ResetEvent {
  const factory ResetSendingEmailEvent(final String email) =
      _$ResetSendingEmailEventImpl;

  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$ResetSendingEmailEventImplCopyWith<_$ResetSendingEmailEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ResetState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() succes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? succes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? succes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResetInitialState value) initial,
    required TResult Function(_ResetSuccesState value) succes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResetInitialState value)? initial,
    TResult? Function(_ResetSuccesState value)? succes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResetInitialState value)? initial,
    TResult Function(_ResetSuccesState value)? succes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetStateCopyWith<$Res> {
  factory $ResetStateCopyWith(
          ResetState value, $Res Function(ResetState) then) =
      _$ResetStateCopyWithImpl<$Res, ResetState>;
}

/// @nodoc
class _$ResetStateCopyWithImpl<$Res, $Val extends ResetState>
    implements $ResetStateCopyWith<$Res> {
  _$ResetStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ResetInitialStateImplCopyWith<$Res> {
  factory _$$ResetInitialStateImplCopyWith(_$ResetInitialStateImpl value,
          $Res Function(_$ResetInitialStateImpl) then) =
      __$$ResetInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetInitialStateImplCopyWithImpl<$Res>
    extends _$ResetStateCopyWithImpl<$Res, _$ResetInitialStateImpl>
    implements _$$ResetInitialStateImplCopyWith<$Res> {
  __$$ResetInitialStateImplCopyWithImpl(_$ResetInitialStateImpl _value,
      $Res Function(_$ResetInitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetInitialStateImpl implements _ResetInitialState {
  const _$ResetInitialStateImpl();

  @override
  String toString() {
    return 'ResetState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() succes,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? succes,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? succes,
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
    required TResult Function(_ResetInitialState value) initial,
    required TResult Function(_ResetSuccesState value) succes,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResetInitialState value)? initial,
    TResult? Function(_ResetSuccesState value)? succes,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResetInitialState value)? initial,
    TResult Function(_ResetSuccesState value)? succes,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ResetInitialState implements ResetState {
  const factory _ResetInitialState() = _$ResetInitialStateImpl;
}

/// @nodoc
abstract class _$$ResetSuccesStateImplCopyWith<$Res> {
  factory _$$ResetSuccesStateImplCopyWith(_$ResetSuccesStateImpl value,
          $Res Function(_$ResetSuccesStateImpl) then) =
      __$$ResetSuccesStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetSuccesStateImplCopyWithImpl<$Res>
    extends _$ResetStateCopyWithImpl<$Res, _$ResetSuccesStateImpl>
    implements _$$ResetSuccesStateImplCopyWith<$Res> {
  __$$ResetSuccesStateImplCopyWithImpl(_$ResetSuccesStateImpl _value,
      $Res Function(_$ResetSuccesStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetSuccesStateImpl implements _ResetSuccesState {
  const _$ResetSuccesStateImpl();

  @override
  String toString() {
    return 'ResetState.succes()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetSuccesStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() succes,
  }) {
    return succes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? succes,
  }) {
    return succes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? succes,
    required TResult orElse(),
  }) {
    if (succes != null) {
      return succes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResetInitialState value) initial,
    required TResult Function(_ResetSuccesState value) succes,
  }) {
    return succes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResetInitialState value)? initial,
    TResult? Function(_ResetSuccesState value)? succes,
  }) {
    return succes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResetInitialState value)? initial,
    TResult Function(_ResetSuccesState value)? succes,
    required TResult orElse(),
  }) {
    if (succes != null) {
      return succes(this);
    }
    return orElse();
  }
}

abstract class _ResetSuccesState implements ResetState {
  const factory _ResetSuccesState() = _$ResetSuccesStateImpl;
}
