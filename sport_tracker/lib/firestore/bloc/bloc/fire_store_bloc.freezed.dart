// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fire_store_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FireStoreEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(
            String title, int roundTime, int restTime, int rounds)
        save,
    required TResult Function(String uid) delete,
    required TResult Function(String uid, bool isCompleted) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String title, int roundTime, int restTime, int rounds)?
        save,
    TResult? Function(String uid)? delete,
    TResult? Function(String uid, bool isCompleted)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String title, int roundTime, int restTime, int rounds)?
        save,
    TResult Function(String uid)? delete,
    TResult Function(String uid, bool isCompleted)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FireStoreLoadEvent value) load,
    required TResult Function(FireStoreSaveEvent value) save,
    required TResult Function(FireStoreDeleteEvent value) delete,
    required TResult Function(FireStoreUpdateEvent value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FireStoreLoadEvent value)? load,
    TResult? Function(FireStoreSaveEvent value)? save,
    TResult? Function(FireStoreDeleteEvent value)? delete,
    TResult? Function(FireStoreUpdateEvent value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FireStoreLoadEvent value)? load,
    TResult Function(FireStoreSaveEvent value)? save,
    TResult Function(FireStoreDeleteEvent value)? delete,
    TResult Function(FireStoreUpdateEvent value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FireStoreEventCopyWith<$Res> {
  factory $FireStoreEventCopyWith(
          FireStoreEvent value, $Res Function(FireStoreEvent) then) =
      _$FireStoreEventCopyWithImpl<$Res, FireStoreEvent>;
}

/// @nodoc
class _$FireStoreEventCopyWithImpl<$Res, $Val extends FireStoreEvent>
    implements $FireStoreEventCopyWith<$Res> {
  _$FireStoreEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FireStoreLoadEventImplCopyWith<$Res> {
  factory _$$FireStoreLoadEventImplCopyWith(_$FireStoreLoadEventImpl value,
          $Res Function(_$FireStoreLoadEventImpl) then) =
      __$$FireStoreLoadEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FireStoreLoadEventImplCopyWithImpl<$Res>
    extends _$FireStoreEventCopyWithImpl<$Res, _$FireStoreLoadEventImpl>
    implements _$$FireStoreLoadEventImplCopyWith<$Res> {
  __$$FireStoreLoadEventImplCopyWithImpl(_$FireStoreLoadEventImpl _value,
      $Res Function(_$FireStoreLoadEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FireStoreLoadEventImpl implements FireStoreLoadEvent {
  const _$FireStoreLoadEventImpl();

  @override
  String toString() {
    return 'FireStoreEvent.load()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FireStoreLoadEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(
            String title, int roundTime, int restTime, int rounds)
        save,
    required TResult Function(String uid) delete,
    required TResult Function(String uid, bool isCompleted) update,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String title, int roundTime, int restTime, int rounds)?
        save,
    TResult? Function(String uid)? delete,
    TResult? Function(String uid, bool isCompleted)? update,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String title, int roundTime, int restTime, int rounds)?
        save,
    TResult Function(String uid)? delete,
    TResult Function(String uid, bool isCompleted)? update,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FireStoreLoadEvent value) load,
    required TResult Function(FireStoreSaveEvent value) save,
    required TResult Function(FireStoreDeleteEvent value) delete,
    required TResult Function(FireStoreUpdateEvent value) update,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FireStoreLoadEvent value)? load,
    TResult? Function(FireStoreSaveEvent value)? save,
    TResult? Function(FireStoreDeleteEvent value)? delete,
    TResult? Function(FireStoreUpdateEvent value)? update,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FireStoreLoadEvent value)? load,
    TResult Function(FireStoreSaveEvent value)? save,
    TResult Function(FireStoreDeleteEvent value)? delete,
    TResult Function(FireStoreUpdateEvent value)? update,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class FireStoreLoadEvent implements FireStoreEvent {
  const factory FireStoreLoadEvent() = _$FireStoreLoadEventImpl;
}

/// @nodoc
abstract class _$$FireStoreSaveEventImplCopyWith<$Res> {
  factory _$$FireStoreSaveEventImplCopyWith(_$FireStoreSaveEventImpl value,
          $Res Function(_$FireStoreSaveEventImpl) then) =
      __$$FireStoreSaveEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title, int roundTime, int restTime, int rounds});
}

/// @nodoc
class __$$FireStoreSaveEventImplCopyWithImpl<$Res>
    extends _$FireStoreEventCopyWithImpl<$Res, _$FireStoreSaveEventImpl>
    implements _$$FireStoreSaveEventImplCopyWith<$Res> {
  __$$FireStoreSaveEventImplCopyWithImpl(_$FireStoreSaveEventImpl _value,
      $Res Function(_$FireStoreSaveEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? roundTime = null,
    Object? restTime = null,
    Object? rounds = null,
  }) {
    return _then(_$FireStoreSaveEventImpl(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      null == roundTime
          ? _value.roundTime
          : roundTime // ignore: cast_nullable_to_non_nullable
              as int,
      null == restTime
          ? _value.restTime
          : restTime // ignore: cast_nullable_to_non_nullable
              as int,
      null == rounds
          ? _value.rounds
          : rounds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FireStoreSaveEventImpl implements FireStoreSaveEvent {
  const _$FireStoreSaveEventImpl(
      this.title, this.roundTime, this.restTime, this.rounds);

  @override
  final String title;
  @override
  final int roundTime;
  @override
  final int restTime;
  @override
  final int rounds;

  @override
  String toString() {
    return 'FireStoreEvent.save(title: $title, roundTime: $roundTime, restTime: $restTime, rounds: $rounds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FireStoreSaveEventImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.roundTime, roundTime) ||
                other.roundTime == roundTime) &&
            (identical(other.restTime, restTime) ||
                other.restTime == restTime) &&
            (identical(other.rounds, rounds) || other.rounds == rounds));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, title, roundTime, restTime, rounds);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FireStoreSaveEventImplCopyWith<_$FireStoreSaveEventImpl> get copyWith =>
      __$$FireStoreSaveEventImplCopyWithImpl<_$FireStoreSaveEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(
            String title, int roundTime, int restTime, int rounds)
        save,
    required TResult Function(String uid) delete,
    required TResult Function(String uid, bool isCompleted) update,
  }) {
    return save(title, roundTime, restTime, rounds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String title, int roundTime, int restTime, int rounds)?
        save,
    TResult? Function(String uid)? delete,
    TResult? Function(String uid, bool isCompleted)? update,
  }) {
    return save?.call(title, roundTime, restTime, rounds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String title, int roundTime, int restTime, int rounds)?
        save,
    TResult Function(String uid)? delete,
    TResult Function(String uid, bool isCompleted)? update,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(title, roundTime, restTime, rounds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FireStoreLoadEvent value) load,
    required TResult Function(FireStoreSaveEvent value) save,
    required TResult Function(FireStoreDeleteEvent value) delete,
    required TResult Function(FireStoreUpdateEvent value) update,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FireStoreLoadEvent value)? load,
    TResult? Function(FireStoreSaveEvent value)? save,
    TResult? Function(FireStoreDeleteEvent value)? delete,
    TResult? Function(FireStoreUpdateEvent value)? update,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FireStoreLoadEvent value)? load,
    TResult Function(FireStoreSaveEvent value)? save,
    TResult Function(FireStoreDeleteEvent value)? delete,
    TResult Function(FireStoreUpdateEvent value)? update,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class FireStoreSaveEvent implements FireStoreEvent {
  const factory FireStoreSaveEvent(final String title, final int roundTime,
      final int restTime, final int rounds) = _$FireStoreSaveEventImpl;

  String get title;
  int get roundTime;
  int get restTime;
  int get rounds;
  @JsonKey(ignore: true)
  _$$FireStoreSaveEventImplCopyWith<_$FireStoreSaveEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FireStoreDeleteEventImplCopyWith<$Res> {
  factory _$$FireStoreDeleteEventImplCopyWith(_$FireStoreDeleteEventImpl value,
          $Res Function(_$FireStoreDeleteEventImpl) then) =
      __$$FireStoreDeleteEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String uid});
}

/// @nodoc
class __$$FireStoreDeleteEventImplCopyWithImpl<$Res>
    extends _$FireStoreEventCopyWithImpl<$Res, _$FireStoreDeleteEventImpl>
    implements _$$FireStoreDeleteEventImplCopyWith<$Res> {
  __$$FireStoreDeleteEventImplCopyWithImpl(_$FireStoreDeleteEventImpl _value,
      $Res Function(_$FireStoreDeleteEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
  }) {
    return _then(_$FireStoreDeleteEventImpl(
      null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FireStoreDeleteEventImpl implements FireStoreDeleteEvent {
  const _$FireStoreDeleteEventImpl(this.uid);

  @override
  final String uid;

  @override
  String toString() {
    return 'FireStoreEvent.delete(uid: $uid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FireStoreDeleteEventImpl &&
            (identical(other.uid, uid) || other.uid == uid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FireStoreDeleteEventImplCopyWith<_$FireStoreDeleteEventImpl>
      get copyWith =>
          __$$FireStoreDeleteEventImplCopyWithImpl<_$FireStoreDeleteEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(
            String title, int roundTime, int restTime, int rounds)
        save,
    required TResult Function(String uid) delete,
    required TResult Function(String uid, bool isCompleted) update,
  }) {
    return delete(uid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String title, int roundTime, int restTime, int rounds)?
        save,
    TResult? Function(String uid)? delete,
    TResult? Function(String uid, bool isCompleted)? update,
  }) {
    return delete?.call(uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String title, int roundTime, int restTime, int rounds)?
        save,
    TResult Function(String uid)? delete,
    TResult Function(String uid, bool isCompleted)? update,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(uid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FireStoreLoadEvent value) load,
    required TResult Function(FireStoreSaveEvent value) save,
    required TResult Function(FireStoreDeleteEvent value) delete,
    required TResult Function(FireStoreUpdateEvent value) update,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FireStoreLoadEvent value)? load,
    TResult? Function(FireStoreSaveEvent value)? save,
    TResult? Function(FireStoreDeleteEvent value)? delete,
    TResult? Function(FireStoreUpdateEvent value)? update,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FireStoreLoadEvent value)? load,
    TResult Function(FireStoreSaveEvent value)? save,
    TResult Function(FireStoreDeleteEvent value)? delete,
    TResult Function(FireStoreUpdateEvent value)? update,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class FireStoreDeleteEvent implements FireStoreEvent {
  const factory FireStoreDeleteEvent(final String uid) =
      _$FireStoreDeleteEventImpl;

  String get uid;
  @JsonKey(ignore: true)
  _$$FireStoreDeleteEventImplCopyWith<_$FireStoreDeleteEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FireStoreUpdateEventImplCopyWith<$Res> {
  factory _$$FireStoreUpdateEventImplCopyWith(_$FireStoreUpdateEventImpl value,
          $Res Function(_$FireStoreUpdateEventImpl) then) =
      __$$FireStoreUpdateEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String uid, bool isCompleted});
}

/// @nodoc
class __$$FireStoreUpdateEventImplCopyWithImpl<$Res>
    extends _$FireStoreEventCopyWithImpl<$Res, _$FireStoreUpdateEventImpl>
    implements _$$FireStoreUpdateEventImplCopyWith<$Res> {
  __$$FireStoreUpdateEventImplCopyWithImpl(_$FireStoreUpdateEventImpl _value,
      $Res Function(_$FireStoreUpdateEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? isCompleted = null,
  }) {
    return _then(_$FireStoreUpdateEventImpl(
      null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$FireStoreUpdateEventImpl implements FireStoreUpdateEvent {
  const _$FireStoreUpdateEventImpl(this.uid, this.isCompleted);

  @override
  final String uid;
  @override
  final bool isCompleted;

  @override
  String toString() {
    return 'FireStoreEvent.update(uid: $uid, isCompleted: $isCompleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FireStoreUpdateEventImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uid, isCompleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FireStoreUpdateEventImplCopyWith<_$FireStoreUpdateEventImpl>
      get copyWith =>
          __$$FireStoreUpdateEventImplCopyWithImpl<_$FireStoreUpdateEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(
            String title, int roundTime, int restTime, int rounds)
        save,
    required TResult Function(String uid) delete,
    required TResult Function(String uid, bool isCompleted) update,
  }) {
    return update(uid, isCompleted);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String title, int roundTime, int restTime, int rounds)?
        save,
    TResult? Function(String uid)? delete,
    TResult? Function(String uid, bool isCompleted)? update,
  }) {
    return update?.call(uid, isCompleted);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String title, int roundTime, int restTime, int rounds)?
        save,
    TResult Function(String uid)? delete,
    TResult Function(String uid, bool isCompleted)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(uid, isCompleted);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FireStoreLoadEvent value) load,
    required TResult Function(FireStoreSaveEvent value) save,
    required TResult Function(FireStoreDeleteEvent value) delete,
    required TResult Function(FireStoreUpdateEvent value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FireStoreLoadEvent value)? load,
    TResult? Function(FireStoreSaveEvent value)? save,
    TResult? Function(FireStoreDeleteEvent value)? delete,
    TResult? Function(FireStoreUpdateEvent value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FireStoreLoadEvent value)? load,
    TResult Function(FireStoreSaveEvent value)? save,
    TResult Function(FireStoreDeleteEvent value)? delete,
    TResult Function(FireStoreUpdateEvent value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class FireStoreUpdateEvent implements FireStoreEvent {
  const factory FireStoreUpdateEvent(final String uid, final bool isCompleted) =
      _$FireStoreUpdateEventImpl;

  String get uid;
  bool get isCompleted;
  @JsonKey(ignore: true)
  _$$FireStoreUpdateEventImplCopyWith<_$FireStoreUpdateEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FireStoreState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FireStoreInitialState value) initial,
    required TResult Function(FireStoreLoadingState value) loading,
    required TResult Function(FireStoreSuccessState value) success,
    required TResult Function(FireStoreSavedState value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FireStoreInitialState value)? initial,
    TResult? Function(FireStoreLoadingState value)? loading,
    TResult? Function(FireStoreSuccessState value)? success,
    TResult? Function(FireStoreSavedState value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FireStoreInitialState value)? initial,
    TResult Function(FireStoreLoadingState value)? loading,
    TResult Function(FireStoreSuccessState value)? success,
    TResult Function(FireStoreSavedState value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FireStoreStateCopyWith<$Res> {
  factory $FireStoreStateCopyWith(
          FireStoreState value, $Res Function(FireStoreState) then) =
      _$FireStoreStateCopyWithImpl<$Res, FireStoreState>;
}

/// @nodoc
class _$FireStoreStateCopyWithImpl<$Res, $Val extends FireStoreState>
    implements $FireStoreStateCopyWith<$Res> {
  _$FireStoreStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FireStoreInitialStateImplCopyWith<$Res> {
  factory _$$FireStoreInitialStateImplCopyWith(
          _$FireStoreInitialStateImpl value,
          $Res Function(_$FireStoreInitialStateImpl) then) =
      __$$FireStoreInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FireStoreInitialStateImplCopyWithImpl<$Res>
    extends _$FireStoreStateCopyWithImpl<$Res, _$FireStoreInitialStateImpl>
    implements _$$FireStoreInitialStateImplCopyWith<$Res> {
  __$$FireStoreInitialStateImplCopyWithImpl(_$FireStoreInitialStateImpl _value,
      $Res Function(_$FireStoreInitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FireStoreInitialStateImpl implements FireStoreInitialState {
  const _$FireStoreInitialStateImpl();

  @override
  String toString() {
    return 'FireStoreState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FireStoreInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() saved,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? saved,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? saved,
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
    required TResult Function(FireStoreInitialState value) initial,
    required TResult Function(FireStoreLoadingState value) loading,
    required TResult Function(FireStoreSuccessState value) success,
    required TResult Function(FireStoreSavedState value) saved,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FireStoreInitialState value)? initial,
    TResult? Function(FireStoreLoadingState value)? loading,
    TResult? Function(FireStoreSuccessState value)? success,
    TResult? Function(FireStoreSavedState value)? saved,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FireStoreInitialState value)? initial,
    TResult Function(FireStoreLoadingState value)? loading,
    TResult Function(FireStoreSuccessState value)? success,
    TResult Function(FireStoreSavedState value)? saved,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class FireStoreInitialState implements FireStoreState {
  const factory FireStoreInitialState() = _$FireStoreInitialStateImpl;
}

/// @nodoc
abstract class _$$FireStoreLoadingStateImplCopyWith<$Res> {
  factory _$$FireStoreLoadingStateImplCopyWith(
          _$FireStoreLoadingStateImpl value,
          $Res Function(_$FireStoreLoadingStateImpl) then) =
      __$$FireStoreLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FireStoreLoadingStateImplCopyWithImpl<$Res>
    extends _$FireStoreStateCopyWithImpl<$Res, _$FireStoreLoadingStateImpl>
    implements _$$FireStoreLoadingStateImplCopyWith<$Res> {
  __$$FireStoreLoadingStateImplCopyWithImpl(_$FireStoreLoadingStateImpl _value,
      $Res Function(_$FireStoreLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FireStoreLoadingStateImpl implements FireStoreLoadingState {
  const _$FireStoreLoadingStateImpl();

  @override
  String toString() {
    return 'FireStoreState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FireStoreLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() saved,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? saved,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FireStoreInitialState value) initial,
    required TResult Function(FireStoreLoadingState value) loading,
    required TResult Function(FireStoreSuccessState value) success,
    required TResult Function(FireStoreSavedState value) saved,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FireStoreInitialState value)? initial,
    TResult? Function(FireStoreLoadingState value)? loading,
    TResult? Function(FireStoreSuccessState value)? success,
    TResult? Function(FireStoreSavedState value)? saved,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FireStoreInitialState value)? initial,
    TResult Function(FireStoreLoadingState value)? loading,
    TResult Function(FireStoreSuccessState value)? success,
    TResult Function(FireStoreSavedState value)? saved,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FireStoreLoadingState implements FireStoreState {
  const factory FireStoreLoadingState() = _$FireStoreLoadingStateImpl;
}

/// @nodoc
abstract class _$$FireStoreSuccessStateImplCopyWith<$Res> {
  factory _$$FireStoreSuccessStateImplCopyWith(
          _$FireStoreSuccessStateImpl value,
          $Res Function(_$FireStoreSuccessStateImpl) then) =
      __$$FireStoreSuccessStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FireStoreSuccessStateImplCopyWithImpl<$Res>
    extends _$FireStoreStateCopyWithImpl<$Res, _$FireStoreSuccessStateImpl>
    implements _$$FireStoreSuccessStateImplCopyWith<$Res> {
  __$$FireStoreSuccessStateImplCopyWithImpl(_$FireStoreSuccessStateImpl _value,
      $Res Function(_$FireStoreSuccessStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FireStoreSuccessStateImpl implements FireStoreSuccessState {
  const _$FireStoreSuccessStateImpl();

  @override
  String toString() {
    return 'FireStoreState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FireStoreSuccessStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() saved,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? saved,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FireStoreInitialState value) initial,
    required TResult Function(FireStoreLoadingState value) loading,
    required TResult Function(FireStoreSuccessState value) success,
    required TResult Function(FireStoreSavedState value) saved,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FireStoreInitialState value)? initial,
    TResult? Function(FireStoreLoadingState value)? loading,
    TResult? Function(FireStoreSuccessState value)? success,
    TResult? Function(FireStoreSavedState value)? saved,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FireStoreInitialState value)? initial,
    TResult Function(FireStoreLoadingState value)? loading,
    TResult Function(FireStoreSuccessState value)? success,
    TResult Function(FireStoreSavedState value)? saved,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class FireStoreSuccessState implements FireStoreState {
  const factory FireStoreSuccessState() = _$FireStoreSuccessStateImpl;
}

/// @nodoc
abstract class _$$FireStoreSavedStateImplCopyWith<$Res> {
  factory _$$FireStoreSavedStateImplCopyWith(_$FireStoreSavedStateImpl value,
          $Res Function(_$FireStoreSavedStateImpl) then) =
      __$$FireStoreSavedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FireStoreSavedStateImplCopyWithImpl<$Res>
    extends _$FireStoreStateCopyWithImpl<$Res, _$FireStoreSavedStateImpl>
    implements _$$FireStoreSavedStateImplCopyWith<$Res> {
  __$$FireStoreSavedStateImplCopyWithImpl(_$FireStoreSavedStateImpl _value,
      $Res Function(_$FireStoreSavedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FireStoreSavedStateImpl implements FireStoreSavedState {
  const _$FireStoreSavedStateImpl();

  @override
  String toString() {
    return 'FireStoreState.saved()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FireStoreSavedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FireStoreInitialState value) initial,
    required TResult Function(FireStoreLoadingState value) loading,
    required TResult Function(FireStoreSuccessState value) success,
    required TResult Function(FireStoreSavedState value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FireStoreInitialState value)? initial,
    TResult? Function(FireStoreLoadingState value)? loading,
    TResult? Function(FireStoreSuccessState value)? success,
    TResult? Function(FireStoreSavedState value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FireStoreInitialState value)? initial,
    TResult Function(FireStoreLoadingState value)? loading,
    TResult Function(FireStoreSuccessState value)? success,
    TResult Function(FireStoreSavedState value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class FireStoreSavedState implements FireStoreState {
  const factory FireStoreSavedState() = _$FireStoreSavedStateImpl;
}
