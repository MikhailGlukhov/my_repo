// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RoomEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getRooms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getRooms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRooms,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RoomGetRoomsEvent value) getRooms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RoomGetRoomsEvent value)? getRooms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RoomGetRoomsEvent value)? getRooms,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomEventCopyWith<$Res> {
  factory $RoomEventCopyWith(RoomEvent value, $Res Function(RoomEvent) then) =
      _$RoomEventCopyWithImpl<$Res, RoomEvent>;
}

/// @nodoc
class _$RoomEventCopyWithImpl<$Res, $Val extends RoomEvent>
    implements $RoomEventCopyWith<$Res> {
  _$RoomEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RoomEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$RoomGetRoomsEventImplCopyWith<$Res> {
  factory _$$RoomGetRoomsEventImplCopyWith(_$RoomGetRoomsEventImpl value,
          $Res Function(_$RoomGetRoomsEventImpl) then) =
      __$$RoomGetRoomsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RoomGetRoomsEventImplCopyWithImpl<$Res>
    extends _$RoomEventCopyWithImpl<$Res, _$RoomGetRoomsEventImpl>
    implements _$$RoomGetRoomsEventImplCopyWith<$Res> {
  __$$RoomGetRoomsEventImplCopyWithImpl(_$RoomGetRoomsEventImpl _value,
      $Res Function(_$RoomGetRoomsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoomEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RoomGetRoomsEventImpl implements _RoomGetRoomsEvent {
  const _$RoomGetRoomsEventImpl();

  @override
  String toString() {
    return 'RoomEvent.getRooms()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RoomGetRoomsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getRooms,
  }) {
    return getRooms();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getRooms,
  }) {
    return getRooms?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRooms,
    required TResult orElse(),
  }) {
    if (getRooms != null) {
      return getRooms();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RoomGetRoomsEvent value) getRooms,
  }) {
    return getRooms(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RoomGetRoomsEvent value)? getRooms,
  }) {
    return getRooms?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RoomGetRoomsEvent value)? getRooms,
    required TResult orElse(),
  }) {
    if (getRooms != null) {
      return getRooms(this);
    }
    return orElse();
  }
}

abstract class _RoomGetRoomsEvent implements RoomEvent {
  const factory _RoomGetRoomsEvent() = _$RoomGetRoomsEventImpl;
}

/// @nodoc
mixin _$RoomState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() succes,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? succes,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? succes,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RoomSuccesState value) succes,
    required TResult Function(_RoomErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RoomSuccesState value)? succes,
    TResult? Function(_RoomErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RoomSuccesState value)? succes,
    TResult Function(_RoomErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomStateCopyWith<$Res> {
  factory $RoomStateCopyWith(RoomState value, $Res Function(RoomState) then) =
      _$RoomStateCopyWithImpl<$Res, RoomState>;
}

/// @nodoc
class _$RoomStateCopyWithImpl<$Res, $Val extends RoomState>
    implements $RoomStateCopyWith<$Res> {
  _$RoomStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RoomState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$RoomSuccesStateImplCopyWith<$Res> {
  factory _$$RoomSuccesStateImplCopyWith(_$RoomSuccesStateImpl value,
          $Res Function(_$RoomSuccesStateImpl) then) =
      __$$RoomSuccesStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RoomSuccesStateImplCopyWithImpl<$Res>
    extends _$RoomStateCopyWithImpl<$Res, _$RoomSuccesStateImpl>
    implements _$$RoomSuccesStateImplCopyWith<$Res> {
  __$$RoomSuccesStateImplCopyWithImpl(
      _$RoomSuccesStateImpl _value, $Res Function(_$RoomSuccesStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoomState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RoomSuccesStateImpl implements _RoomSuccesState {
  const _$RoomSuccesStateImpl();

  @override
  String toString() {
    return 'RoomState.succes()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RoomSuccesStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() succes,
    required TResult Function() error,
  }) {
    return succes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? succes,
    TResult? Function()? error,
  }) {
    return succes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? succes,
    TResult Function()? error,
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
    required TResult Function(_RoomSuccesState value) succes,
    required TResult Function(_RoomErrorState value) error,
  }) {
    return succes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RoomSuccesState value)? succes,
    TResult? Function(_RoomErrorState value)? error,
  }) {
    return succes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RoomSuccesState value)? succes,
    TResult Function(_RoomErrorState value)? error,
    required TResult orElse(),
  }) {
    if (succes != null) {
      return succes(this);
    }
    return orElse();
  }
}

abstract class _RoomSuccesState implements RoomState {
  const factory _RoomSuccesState() = _$RoomSuccesStateImpl;
}

/// @nodoc
abstract class _$$RoomErrorStateImplCopyWith<$Res> {
  factory _$$RoomErrorStateImplCopyWith(_$RoomErrorStateImpl value,
          $Res Function(_$RoomErrorStateImpl) then) =
      __$$RoomErrorStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RoomErrorStateImplCopyWithImpl<$Res>
    extends _$RoomStateCopyWithImpl<$Res, _$RoomErrorStateImpl>
    implements _$$RoomErrorStateImplCopyWith<$Res> {
  __$$RoomErrorStateImplCopyWithImpl(
      _$RoomErrorStateImpl _value, $Res Function(_$RoomErrorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoomState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RoomErrorStateImpl implements _RoomErrorState {
  const _$RoomErrorStateImpl();

  @override
  String toString() {
    return 'RoomState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RoomErrorStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() succes,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? succes,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? succes,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RoomSuccesState value) succes,
    required TResult Function(_RoomErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RoomSuccesState value)? succes,
    TResult? Function(_RoomErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RoomSuccesState value)? succes,
    TResult Function(_RoomErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _RoomErrorState implements RoomState {
  const factory _RoomErrorState() = _$RoomErrorStateImpl;
}
