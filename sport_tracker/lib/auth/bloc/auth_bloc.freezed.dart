// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  User? get user => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user) userChanging,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User? user)? userChanging,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user)? userChanging,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventsUserChangingEvent value) userChanging,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthEventsUserChangingEvent value)? userChanging,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventsUserChangingEvent value)? userChanging,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthEventCopyWith<AuthEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
  @useResult
  $Res call({User? user});
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthEventsUserChangingEventImplCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory _$$AuthEventsUserChangingEventImplCopyWith(
          _$AuthEventsUserChangingEventImpl value,
          $Res Function(_$AuthEventsUserChangingEventImpl) then) =
      __$$AuthEventsUserChangingEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User? user});
}

/// @nodoc
class __$$AuthEventsUserChangingEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthEventsUserChangingEventImpl>
    implements _$$AuthEventsUserChangingEventImplCopyWith<$Res> {
  __$$AuthEventsUserChangingEventImplCopyWithImpl(
      _$AuthEventsUserChangingEventImpl _value,
      $Res Function(_$AuthEventsUserChangingEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$AuthEventsUserChangingEventImpl(
      freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$AuthEventsUserChangingEventImpl implements AuthEventsUserChangingEvent {
  const _$AuthEventsUserChangingEventImpl(this.user);

  @override
  final User? user;

  @override
  String toString() {
    return 'AuthEvent.userChanging(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthEventsUserChangingEventImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthEventsUserChangingEventImplCopyWith<_$AuthEventsUserChangingEventImpl>
      get copyWith => __$$AuthEventsUserChangingEventImplCopyWithImpl<
          _$AuthEventsUserChangingEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user) userChanging,
  }) {
    return userChanging(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User? user)? userChanging,
  }) {
    return userChanging?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user)? userChanging,
    required TResult orElse(),
  }) {
    if (userChanging != null) {
      return userChanging(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventsUserChangingEvent value) userChanging,
  }) {
    return userChanging(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthEventsUserChangingEvent value)? userChanging,
  }) {
    return userChanging?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventsUserChangingEvent value)? userChanging,
    required TResult orElse(),
  }) {
    if (userChanging != null) {
      return userChanging(this);
    }
    return orElse();
  }
}

abstract class AuthEventsUserChangingEvent implements AuthEvent {
  const factory AuthEventsUserChangingEvent(final User? user) =
      _$AuthEventsUserChangingEventImpl;

  @override
  User? get user;
  @override
  @JsonKey(ignore: true)
  _$$AuthEventsUserChangingEventImplCopyWith<_$AuthEventsUserChangingEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(User user) auteficated,
    required TResult Function() unauteficated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(User user)? auteficated,
    TResult? Function()? unauteficated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(User user)? auteficated,
    TResult Function()? unauteficated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthLoadingState value) loading,
    required TResult Function(_AuthAuteficatedState value) auteficated,
    required TResult Function(_AuthUnAuteficatedState value) unauteficated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthLoadingState value)? loading,
    TResult? Function(_AuthAuteficatedState value)? auteficated,
    TResult? Function(_AuthUnAuteficatedState value)? unauteficated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthLoadingState value)? loading,
    TResult Function(_AuthAuteficatedState value)? auteficated,
    TResult Function(_AuthUnAuteficatedState value)? unauteficated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthLoadingStateImplCopyWith<$Res> {
  factory _$$AuthLoadingStateImplCopyWith(_$AuthLoadingStateImpl value,
          $Res Function(_$AuthLoadingStateImpl) then) =
      __$$AuthLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthLoadingStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthLoadingStateImpl>
    implements _$$AuthLoadingStateImplCopyWith<$Res> {
  __$$AuthLoadingStateImplCopyWithImpl(_$AuthLoadingStateImpl _value,
      $Res Function(_$AuthLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthLoadingStateImpl implements _AuthLoadingState {
  const _$AuthLoadingStateImpl();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(User user) auteficated,
    required TResult Function() unauteficated,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(User user)? auteficated,
    TResult? Function()? unauteficated,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(User user)? auteficated,
    TResult Function()? unauteficated,
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
    required TResult Function(_AuthLoadingState value) loading,
    required TResult Function(_AuthAuteficatedState value) auteficated,
    required TResult Function(_AuthUnAuteficatedState value) unauteficated,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthLoadingState value)? loading,
    TResult? Function(_AuthAuteficatedState value)? auteficated,
    TResult? Function(_AuthUnAuteficatedState value)? unauteficated,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthLoadingState value)? loading,
    TResult Function(_AuthAuteficatedState value)? auteficated,
    TResult Function(_AuthUnAuteficatedState value)? unauteficated,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _AuthLoadingState implements AuthState {
  const factory _AuthLoadingState() = _$AuthLoadingStateImpl;
}

/// @nodoc
abstract class _$$AuthAuteficatedStateImplCopyWith<$Res> {
  factory _$$AuthAuteficatedStateImplCopyWith(_$AuthAuteficatedStateImpl value,
          $Res Function(_$AuthAuteficatedStateImpl) then) =
      __$$AuthAuteficatedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$AuthAuteficatedStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthAuteficatedStateImpl>
    implements _$$AuthAuteficatedStateImplCopyWith<$Res> {
  __$$AuthAuteficatedStateImplCopyWithImpl(_$AuthAuteficatedStateImpl _value,
      $Res Function(_$AuthAuteficatedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$AuthAuteficatedStateImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$AuthAuteficatedStateImpl implements _AuthAuteficatedState {
  const _$AuthAuteficatedStateImpl(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'AuthState.auteficated(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthAuteficatedStateImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthAuteficatedStateImplCopyWith<_$AuthAuteficatedStateImpl>
      get copyWith =>
          __$$AuthAuteficatedStateImplCopyWithImpl<_$AuthAuteficatedStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(User user) auteficated,
    required TResult Function() unauteficated,
  }) {
    return auteficated(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(User user)? auteficated,
    TResult? Function()? unauteficated,
  }) {
    return auteficated?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(User user)? auteficated,
    TResult Function()? unauteficated,
    required TResult orElse(),
  }) {
    if (auteficated != null) {
      return auteficated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthLoadingState value) loading,
    required TResult Function(_AuthAuteficatedState value) auteficated,
    required TResult Function(_AuthUnAuteficatedState value) unauteficated,
  }) {
    return auteficated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthLoadingState value)? loading,
    TResult? Function(_AuthAuteficatedState value)? auteficated,
    TResult? Function(_AuthUnAuteficatedState value)? unauteficated,
  }) {
    return auteficated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthLoadingState value)? loading,
    TResult Function(_AuthAuteficatedState value)? auteficated,
    TResult Function(_AuthUnAuteficatedState value)? unauteficated,
    required TResult orElse(),
  }) {
    if (auteficated != null) {
      return auteficated(this);
    }
    return orElse();
  }
}

abstract class _AuthAuteficatedState implements AuthState {
  const factory _AuthAuteficatedState(final User user) =
      _$AuthAuteficatedStateImpl;

  User get user;
  @JsonKey(ignore: true)
  _$$AuthAuteficatedStateImplCopyWith<_$AuthAuteficatedStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthUnAuteficatedStateImplCopyWith<$Res> {
  factory _$$AuthUnAuteficatedStateImplCopyWith(
          _$AuthUnAuteficatedStateImpl value,
          $Res Function(_$AuthUnAuteficatedStateImpl) then) =
      __$$AuthUnAuteficatedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthUnAuteficatedStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthUnAuteficatedStateImpl>
    implements _$$AuthUnAuteficatedStateImplCopyWith<$Res> {
  __$$AuthUnAuteficatedStateImplCopyWithImpl(
      _$AuthUnAuteficatedStateImpl _value,
      $Res Function(_$AuthUnAuteficatedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthUnAuteficatedStateImpl implements _AuthUnAuteficatedState {
  const _$AuthUnAuteficatedStateImpl();

  @override
  String toString() {
    return 'AuthState.unauteficated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthUnAuteficatedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(User user) auteficated,
    required TResult Function() unauteficated,
  }) {
    return unauteficated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(User user)? auteficated,
    TResult? Function()? unauteficated,
  }) {
    return unauteficated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(User user)? auteficated,
    TResult Function()? unauteficated,
    required TResult orElse(),
  }) {
    if (unauteficated != null) {
      return unauteficated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthLoadingState value) loading,
    required TResult Function(_AuthAuteficatedState value) auteficated,
    required TResult Function(_AuthUnAuteficatedState value) unauteficated,
  }) {
    return unauteficated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthLoadingState value)? loading,
    TResult? Function(_AuthAuteficatedState value)? auteficated,
    TResult? Function(_AuthUnAuteficatedState value)? unauteficated,
  }) {
    return unauteficated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthLoadingState value)? loading,
    TResult Function(_AuthAuteficatedState value)? auteficated,
    TResult Function(_AuthUnAuteficatedState value)? unauteficated,
    required TResult orElse(),
  }) {
    if (unauteficated != null) {
      return unauteficated(this);
    }
    return orElse();
  }
}

abstract class _AuthUnAuteficatedState implements AuthState {
  const factory _AuthUnAuteficatedState() = _$AuthUnAuteficatedStateImpl;
}
