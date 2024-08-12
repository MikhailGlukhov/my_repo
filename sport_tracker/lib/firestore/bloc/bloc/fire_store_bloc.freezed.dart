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
    required TResult Function(String title) save,
    required TResult Function(String uid) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title)? save,
    TResult? Function(String uid)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? save,
    TResult Function(String uid)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FireStoreSaveEvent value) save,
    required TResult Function(FireStoreDeleteEvent value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FireStoreSaveEvent value)? save,
    TResult? Function(FireStoreDeleteEvent value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FireStoreSaveEvent value)? save,
    TResult Function(FireStoreDeleteEvent value)? delete,
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
abstract class _$$FireStoreSaveEventImplCopyWith<$Res> {
  factory _$$FireStoreSaveEventImplCopyWith(_$FireStoreSaveEventImpl value,
          $Res Function(_$FireStoreSaveEventImpl) then) =
      __$$FireStoreSaveEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title});
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
  }) {
    return _then(_$FireStoreSaveEventImpl(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FireStoreSaveEventImpl implements FireStoreSaveEvent {
  const _$FireStoreSaveEventImpl(this.title);

  @override
  final String title;

  @override
  String toString() {
    return 'FireStoreEvent.save(title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FireStoreSaveEventImpl &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FireStoreSaveEventImplCopyWith<_$FireStoreSaveEventImpl> get copyWith =>
      __$$FireStoreSaveEventImplCopyWithImpl<_$FireStoreSaveEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) save,
    required TResult Function(String uid) delete,
  }) {
    return save(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title)? save,
    TResult? Function(String uid)? delete,
  }) {
    return save?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? save,
    TResult Function(String uid)? delete,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FireStoreSaveEvent value) save,
    required TResult Function(FireStoreDeleteEvent value) delete,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FireStoreSaveEvent value)? save,
    TResult? Function(FireStoreDeleteEvent value)? delete,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FireStoreSaveEvent value)? save,
    TResult Function(FireStoreDeleteEvent value)? delete,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class FireStoreSaveEvent implements FireStoreEvent {
  const factory FireStoreSaveEvent(final String title) =
      _$FireStoreSaveEventImpl;

  String get title;
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
    required TResult Function(String title) save,
    required TResult Function(String uid) delete,
  }) {
    return delete(uid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title)? save,
    TResult? Function(String uid)? delete,
  }) {
    return delete?.call(uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? save,
    TResult Function(String uid)? delete,
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
    required TResult Function(FireStoreSaveEvent value) save,
    required TResult Function(FireStoreDeleteEvent value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FireStoreSaveEvent value)? save,
    TResult? Function(FireStoreDeleteEvent value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FireStoreSaveEvent value)? save,
    TResult Function(FireStoreDeleteEvent value)? delete,
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
mixin _$FireStoreState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() saved,
    required TResult Function() delited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? saved,
    TResult? Function()? delited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? saved,
    TResult Function()? delited,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FireStoreInitialState value) initial,
    required TResult Function(_FireStoreSavedState value) saved,
    required TResult Function(_FireStoreDelitedState value) delited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FireStoreInitialState value)? initial,
    TResult? Function(_FireStoreSavedState value)? saved,
    TResult? Function(_FireStoreDelitedState value)? delited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FireStoreInitialState value)? initial,
    TResult Function(_FireStoreSavedState value)? saved,
    TResult Function(_FireStoreDelitedState value)? delited,
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

class _$FireStoreInitialStateImpl implements _FireStoreInitialState {
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
    required TResult Function() saved,
    required TResult Function() delited,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? saved,
    TResult? Function()? delited,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? saved,
    TResult Function()? delited,
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
    required TResult Function(_FireStoreInitialState value) initial,
    required TResult Function(_FireStoreSavedState value) saved,
    required TResult Function(_FireStoreDelitedState value) delited,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FireStoreInitialState value)? initial,
    TResult? Function(_FireStoreSavedState value)? saved,
    TResult? Function(_FireStoreDelitedState value)? delited,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FireStoreInitialState value)? initial,
    TResult Function(_FireStoreSavedState value)? saved,
    TResult Function(_FireStoreDelitedState value)? delited,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _FireStoreInitialState implements FireStoreState {
  const factory _FireStoreInitialState() = _$FireStoreInitialStateImpl;
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

class _$FireStoreSavedStateImpl implements _FireStoreSavedState {
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
    required TResult Function() saved,
    required TResult Function() delited,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? saved,
    TResult? Function()? delited,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? saved,
    TResult Function()? delited,
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
    required TResult Function(_FireStoreInitialState value) initial,
    required TResult Function(_FireStoreSavedState value) saved,
    required TResult Function(_FireStoreDelitedState value) delited,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FireStoreInitialState value)? initial,
    TResult? Function(_FireStoreSavedState value)? saved,
    TResult? Function(_FireStoreDelitedState value)? delited,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FireStoreInitialState value)? initial,
    TResult Function(_FireStoreSavedState value)? saved,
    TResult Function(_FireStoreDelitedState value)? delited,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _FireStoreSavedState implements FireStoreState {
  const factory _FireStoreSavedState() = _$FireStoreSavedStateImpl;
}

/// @nodoc
abstract class _$$FireStoreDelitedStateImplCopyWith<$Res> {
  factory _$$FireStoreDelitedStateImplCopyWith(
          _$FireStoreDelitedStateImpl value,
          $Res Function(_$FireStoreDelitedStateImpl) then) =
      __$$FireStoreDelitedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FireStoreDelitedStateImplCopyWithImpl<$Res>
    extends _$FireStoreStateCopyWithImpl<$Res, _$FireStoreDelitedStateImpl>
    implements _$$FireStoreDelitedStateImplCopyWith<$Res> {
  __$$FireStoreDelitedStateImplCopyWithImpl(_$FireStoreDelitedStateImpl _value,
      $Res Function(_$FireStoreDelitedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FireStoreDelitedStateImpl implements _FireStoreDelitedState {
  const _$FireStoreDelitedStateImpl();

  @override
  String toString() {
    return 'FireStoreState.delited()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FireStoreDelitedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() saved,
    required TResult Function() delited,
  }) {
    return delited();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? saved,
    TResult? Function()? delited,
  }) {
    return delited?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? saved,
    TResult Function()? delited,
    required TResult orElse(),
  }) {
    if (delited != null) {
      return delited();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FireStoreInitialState value) initial,
    required TResult Function(_FireStoreSavedState value) saved,
    required TResult Function(_FireStoreDelitedState value) delited,
  }) {
    return delited(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FireStoreInitialState value)? initial,
    TResult? Function(_FireStoreSavedState value)? saved,
    TResult? Function(_FireStoreDelitedState value)? delited,
  }) {
    return delited?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FireStoreInitialState value)? initial,
    TResult Function(_FireStoreSavedState value)? saved,
    TResult Function(_FireStoreDelitedState value)? delited,
    required TResult orElse(),
  }) {
    if (delited != null) {
      return delited(this);
    }
    return orElse();
  }
}

abstract class _FireStoreDelitedState implements FireStoreState {
  const factory _FireStoreDelitedState() = _$FireStoreDelitedStateImpl;
}
