// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignUpEvent {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) registrating,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? registrating,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? registrating,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SingUpRegistratingEvent value) registrating,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SingUpRegistratingEvent value)? registrating,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SingUpRegistratingEvent value)? registrating,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpEventCopyWith<SignUpEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpEventCopyWith<$Res> {
  factory $SignUpEventCopyWith(
          SignUpEvent value, $Res Function(SignUpEvent) then) =
      _$SignUpEventCopyWithImpl<$Res, SignUpEvent>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$SignUpEventCopyWithImpl<$Res, $Val extends SignUpEvent>
    implements $SignUpEventCopyWith<$Res> {
  _$SignUpEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SingUpRegistratingEventImplCopyWith<$Res>
    implements $SignUpEventCopyWith<$Res> {
  factory _$$SingUpRegistratingEventImplCopyWith(
          _$SingUpRegistratingEventImpl value,
          $Res Function(_$SingUpRegistratingEventImpl) then) =
      __$$SingUpRegistratingEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$SingUpRegistratingEventImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$SingUpRegistratingEventImpl>
    implements _$$SingUpRegistratingEventImplCopyWith<$Res> {
  __$$SingUpRegistratingEventImplCopyWithImpl(
      _$SingUpRegistratingEventImpl _value,
      $Res Function(_$SingUpRegistratingEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SingUpRegistratingEventImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SingUpRegistratingEventImpl implements SingUpRegistratingEvent {
  const _$SingUpRegistratingEventImpl(
      {required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'SignUpEvent.registrating(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingUpRegistratingEventImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SingUpRegistratingEventImplCopyWith<_$SingUpRegistratingEventImpl>
      get copyWith => __$$SingUpRegistratingEventImplCopyWithImpl<
          _$SingUpRegistratingEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) registrating,
  }) {
    return registrating(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? registrating,
  }) {
    return registrating?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? registrating,
    required TResult orElse(),
  }) {
    if (registrating != null) {
      return registrating(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SingUpRegistratingEvent value) registrating,
  }) {
    return registrating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SingUpRegistratingEvent value)? registrating,
  }) {
    return registrating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SingUpRegistratingEvent value)? registrating,
    required TResult orElse(),
  }) {
    if (registrating != null) {
      return registrating(this);
    }
    return orElse();
  }
}

abstract class SingUpRegistratingEvent implements SignUpEvent {
  const factory SingUpRegistratingEvent(
      {required final String email,
      required final String password}) = _$SingUpRegistratingEventImpl;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$SingUpRegistratingEventImplCopyWith<_$SingUpRegistratingEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignUpState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() sucess,
    required TResult Function(String? message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function()? sucess,
    TResult? Function(String? message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? sucess,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUpInitialState value) initial,
    required TResult Function(_SignUpInProcessState value) inProgress,
    required TResult Function(_SignUpSucessState value) sucess,
    required TResult Function(_SignUpErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUpInitialState value)? initial,
    TResult? Function(_SignUpInProcessState value)? inProgress,
    TResult? Function(_SignUpSucessState value)? sucess,
    TResult? Function(_SignUpErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpInitialState value)? initial,
    TResult Function(_SignUpInProcessState value)? inProgress,
    TResult Function(_SignUpSucessState value)? sucess,
    TResult Function(_SignUpErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res, SignUpState>;
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res, $Val extends SignUpState>
    implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SignUpInitialStateImplCopyWith<$Res> {
  factory _$$SignUpInitialStateImplCopyWith(_$SignUpInitialStateImpl value,
          $Res Function(_$SignUpInitialStateImpl) then) =
      __$$SignUpInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignUpInitialStateImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$SignUpInitialStateImpl>
    implements _$$SignUpInitialStateImplCopyWith<$Res> {
  __$$SignUpInitialStateImplCopyWithImpl(_$SignUpInitialStateImpl _value,
      $Res Function(_$SignUpInitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignUpInitialStateImpl implements _SignUpInitialState {
  const _$SignUpInitialStateImpl();

  @override
  String toString() {
    return 'SignUpState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignUpInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() sucess,
    required TResult Function(String? message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function()? sucess,
    TResult? Function(String? message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? sucess,
    TResult Function(String? message)? error,
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
    required TResult Function(_SignUpInitialState value) initial,
    required TResult Function(_SignUpInProcessState value) inProgress,
    required TResult Function(_SignUpSucessState value) sucess,
    required TResult Function(_SignUpErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUpInitialState value)? initial,
    TResult? Function(_SignUpInProcessState value)? inProgress,
    TResult? Function(_SignUpSucessState value)? sucess,
    TResult? Function(_SignUpErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpInitialState value)? initial,
    TResult Function(_SignUpInProcessState value)? inProgress,
    TResult Function(_SignUpSucessState value)? sucess,
    TResult Function(_SignUpErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _SignUpInitialState implements SignUpState {
  const factory _SignUpInitialState() = _$SignUpInitialStateImpl;
}

/// @nodoc
abstract class _$$SignUpInProcessStateImplCopyWith<$Res> {
  factory _$$SignUpInProcessStateImplCopyWith(_$SignUpInProcessStateImpl value,
          $Res Function(_$SignUpInProcessStateImpl) then) =
      __$$SignUpInProcessStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignUpInProcessStateImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$SignUpInProcessStateImpl>
    implements _$$SignUpInProcessStateImplCopyWith<$Res> {
  __$$SignUpInProcessStateImplCopyWithImpl(_$SignUpInProcessStateImpl _value,
      $Res Function(_$SignUpInProcessStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignUpInProcessStateImpl implements _SignUpInProcessState {
  const _$SignUpInProcessStateImpl();

  @override
  String toString() {
    return 'SignUpState.inProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpInProcessStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() sucess,
    required TResult Function(String? message) error,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function()? sucess,
    TResult? Function(String? message)? error,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? sucess,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUpInitialState value) initial,
    required TResult Function(_SignUpInProcessState value) inProgress,
    required TResult Function(_SignUpSucessState value) sucess,
    required TResult Function(_SignUpErrorState value) error,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUpInitialState value)? initial,
    TResult? Function(_SignUpInProcessState value)? inProgress,
    TResult? Function(_SignUpSucessState value)? sucess,
    TResult? Function(_SignUpErrorState value)? error,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpInitialState value)? initial,
    TResult Function(_SignUpInProcessState value)? inProgress,
    TResult Function(_SignUpSucessState value)? sucess,
    TResult Function(_SignUpErrorState value)? error,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _SignUpInProcessState implements SignUpState {
  const factory _SignUpInProcessState() = _$SignUpInProcessStateImpl;
}

/// @nodoc
abstract class _$$SignUpSucessStateImplCopyWith<$Res> {
  factory _$$SignUpSucessStateImplCopyWith(_$SignUpSucessStateImpl value,
          $Res Function(_$SignUpSucessStateImpl) then) =
      __$$SignUpSucessStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignUpSucessStateImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$SignUpSucessStateImpl>
    implements _$$SignUpSucessStateImplCopyWith<$Res> {
  __$$SignUpSucessStateImplCopyWithImpl(_$SignUpSucessStateImpl _value,
      $Res Function(_$SignUpSucessStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignUpSucessStateImpl implements _SignUpSucessState {
  const _$SignUpSucessStateImpl();

  @override
  String toString() {
    return 'SignUpState.sucess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignUpSucessStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() sucess,
    required TResult Function(String? message) error,
  }) {
    return sucess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function()? sucess,
    TResult? Function(String? message)? error,
  }) {
    return sucess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? sucess,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (sucess != null) {
      return sucess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUpInitialState value) initial,
    required TResult Function(_SignUpInProcessState value) inProgress,
    required TResult Function(_SignUpSucessState value) sucess,
    required TResult Function(_SignUpErrorState value) error,
  }) {
    return sucess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUpInitialState value)? initial,
    TResult? Function(_SignUpInProcessState value)? inProgress,
    TResult? Function(_SignUpSucessState value)? sucess,
    TResult? Function(_SignUpErrorState value)? error,
  }) {
    return sucess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpInitialState value)? initial,
    TResult Function(_SignUpInProcessState value)? inProgress,
    TResult Function(_SignUpSucessState value)? sucess,
    TResult Function(_SignUpErrorState value)? error,
    required TResult orElse(),
  }) {
    if (sucess != null) {
      return sucess(this);
    }
    return orElse();
  }
}

abstract class _SignUpSucessState implements SignUpState {
  const factory _SignUpSucessState() = _$SignUpSucessStateImpl;
}

/// @nodoc
abstract class _$$SignUpErrorStateImplCopyWith<$Res> {
  factory _$$SignUpErrorStateImplCopyWith(_$SignUpErrorStateImpl value,
          $Res Function(_$SignUpErrorStateImpl) then) =
      __$$SignUpErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$SignUpErrorStateImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$SignUpErrorStateImpl>
    implements _$$SignUpErrorStateImplCopyWith<$Res> {
  __$$SignUpErrorStateImplCopyWithImpl(_$SignUpErrorStateImpl _value,
      $Res Function(_$SignUpErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$SignUpErrorStateImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SignUpErrorStateImpl implements _SignUpErrorState {
  const _$SignUpErrorStateImpl(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'SignUpState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpErrorStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpErrorStateImplCopyWith<_$SignUpErrorStateImpl> get copyWith =>
      __$$SignUpErrorStateImplCopyWithImpl<_$SignUpErrorStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() sucess,
    required TResult Function(String? message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function()? sucess,
    TResult? Function(String? message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? sucess,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUpInitialState value) initial,
    required TResult Function(_SignUpInProcessState value) inProgress,
    required TResult Function(_SignUpSucessState value) sucess,
    required TResult Function(_SignUpErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUpInitialState value)? initial,
    TResult? Function(_SignUpInProcessState value)? inProgress,
    TResult? Function(_SignUpSucessState value)? sucess,
    TResult? Function(_SignUpErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpInitialState value)? initial,
    TResult Function(_SignUpInProcessState value)? inProgress,
    TResult Function(_SignUpSucessState value)? sucess,
    TResult Function(_SignUpErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _SignUpErrorState implements SignUpState {
  const factory _SignUpErrorState(final String? message) =
      _$SignUpErrorStateImpl;

  String? get message;
  @JsonKey(ignore: true)
  _$$SignUpErrorStateImplCopyWith<_$SignUpErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
