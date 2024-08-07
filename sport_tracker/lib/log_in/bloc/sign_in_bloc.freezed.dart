// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SigInEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) logIn,
    required TResult Function() logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? logIn,
    TResult? Function()? logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? logIn,
    TResult Function()? logOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInLoginEvent value) logIn,
    required TResult Function(SingInLogOutEvent value) logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInLoginEvent value)? logIn,
    TResult? Function(SingInLogOutEvent value)? logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInLoginEvent value)? logIn,
    TResult Function(SingInLogOutEvent value)? logOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SigInEventCopyWith<$Res> {
  factory $SigInEventCopyWith(
          SigInEvent value, $Res Function(SigInEvent) then) =
      _$SigInEventCopyWithImpl<$Res, SigInEvent>;
}

/// @nodoc
class _$SigInEventCopyWithImpl<$Res, $Val extends SigInEvent>
    implements $SigInEventCopyWith<$Res> {
  _$SigInEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SignInLoginEventImplCopyWith<$Res> {
  factory _$$SignInLoginEventImplCopyWith(_$SignInLoginEventImpl value,
          $Res Function(_$SignInLoginEventImpl) then) =
      __$$SignInLoginEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$SignInLoginEventImplCopyWithImpl<$Res>
    extends _$SigInEventCopyWithImpl<$Res, _$SignInLoginEventImpl>
    implements _$$SignInLoginEventImplCopyWith<$Res> {
  __$$SignInLoginEventImplCopyWithImpl(_$SignInLoginEventImpl _value,
      $Res Function(_$SignInLoginEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SignInLoginEventImpl(
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

class _$SignInLoginEventImpl implements SignInLoginEvent {
  const _$SignInLoginEventImpl({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'SigInEvent.logIn(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInLoginEventImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInLoginEventImplCopyWith<_$SignInLoginEventImpl> get copyWith =>
      __$$SignInLoginEventImplCopyWithImpl<_$SignInLoginEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) logIn,
    required TResult Function() logOut,
  }) {
    return logIn(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? logIn,
    TResult? Function()? logOut,
  }) {
    return logIn?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? logIn,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (logIn != null) {
      return logIn(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInLoginEvent value) logIn,
    required TResult Function(SingInLogOutEvent value) logOut,
  }) {
    return logIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInLoginEvent value)? logIn,
    TResult? Function(SingInLogOutEvent value)? logOut,
  }) {
    return logIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInLoginEvent value)? logIn,
    TResult Function(SingInLogOutEvent value)? logOut,
    required TResult orElse(),
  }) {
    if (logIn != null) {
      return logIn(this);
    }
    return orElse();
  }
}

abstract class SignInLoginEvent implements SigInEvent {
  const factory SignInLoginEvent(
      {required final String email,
      required final String password}) = _$SignInLoginEventImpl;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$SignInLoginEventImplCopyWith<_$SignInLoginEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SingInLogOutEventImplCopyWith<$Res> {
  factory _$$SingInLogOutEventImplCopyWith(_$SingInLogOutEventImpl value,
          $Res Function(_$SingInLogOutEventImpl) then) =
      __$$SingInLogOutEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SingInLogOutEventImplCopyWithImpl<$Res>
    extends _$SigInEventCopyWithImpl<$Res, _$SingInLogOutEventImpl>
    implements _$$SingInLogOutEventImplCopyWith<$Res> {
  __$$SingInLogOutEventImplCopyWithImpl(_$SingInLogOutEventImpl _value,
      $Res Function(_$SingInLogOutEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SingInLogOutEventImpl implements SingInLogOutEvent {
  const _$SingInLogOutEventImpl();

  @override
  String toString() {
    return 'SigInEvent.logOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SingInLogOutEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) logIn,
    required TResult Function() logOut,
  }) {
    return logOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? logIn,
    TResult? Function()? logOut,
  }) {
    return logOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? logIn,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInLoginEvent value) logIn,
    required TResult Function(SingInLogOutEvent value) logOut,
  }) {
    return logOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInLoginEvent value)? logIn,
    TResult? Function(SingInLogOutEvent value)? logOut,
  }) {
    return logOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInLoginEvent value)? logIn,
    TResult Function(SingInLogOutEvent value)? logOut,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut(this);
    }
    return orElse();
  }
}

abstract class SingInLogOutEvent implements SigInEvent {
  const factory SingInLogOutEvent() = _$SingInLogOutEventImpl;
}

/// @nodoc
mixin _$SignInState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProcess,
    required TResult Function() sucess,
    required TResult Function(String? message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProcess,
    TResult? Function()? sucess,
    TResult? Function(String? message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProcess,
    TResult Function()? sucess,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInInitialState value) initial,
    required TResult Function(_SignInInProcessState value) inProcess,
    required TResult Function(_SignInSucessState value) sucess,
    required TResult Function(_SignInErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInInitialState value)? initial,
    TResult? Function(_SignInInProcessState value)? inProcess,
    TResult? Function(_SignInSucessState value)? sucess,
    TResult? Function(_SignInErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInInitialState value)? initial,
    TResult Function(_SignInInProcessState value)? inProcess,
    TResult Function(_SignInSucessState value)? sucess,
    TResult Function(_SignInErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res, SignInState>;
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res, $Val extends SignInState>
    implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SignInInitialStateImplCopyWith<$Res> {
  factory _$$SignInInitialStateImplCopyWith(_$SignInInitialStateImpl value,
          $Res Function(_$SignInInitialStateImpl) then) =
      __$$SignInInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInInitialStateImplCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$SignInInitialStateImpl>
    implements _$$SignInInitialStateImplCopyWith<$Res> {
  __$$SignInInitialStateImplCopyWithImpl(_$SignInInitialStateImpl _value,
      $Res Function(_$SignInInitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignInInitialStateImpl implements _SignInInitialState {
  const _$SignInInitialStateImpl();

  @override
  String toString() {
    return 'SignInState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignInInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProcess,
    required TResult Function() sucess,
    required TResult Function(String? message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProcess,
    TResult? Function()? sucess,
    TResult? Function(String? message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProcess,
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
    required TResult Function(_SignInInitialState value) initial,
    required TResult Function(_SignInInProcessState value) inProcess,
    required TResult Function(_SignInSucessState value) sucess,
    required TResult Function(_SignInErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInInitialState value)? initial,
    TResult? Function(_SignInInProcessState value)? inProcess,
    TResult? Function(_SignInSucessState value)? sucess,
    TResult? Function(_SignInErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInInitialState value)? initial,
    TResult Function(_SignInInProcessState value)? inProcess,
    TResult Function(_SignInSucessState value)? sucess,
    TResult Function(_SignInErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _SignInInitialState implements SignInState {
  const factory _SignInInitialState() = _$SignInInitialStateImpl;
}

/// @nodoc
abstract class _$$SignInInProcessStateImplCopyWith<$Res> {
  factory _$$SignInInProcessStateImplCopyWith(_$SignInInProcessStateImpl value,
          $Res Function(_$SignInInProcessStateImpl) then) =
      __$$SignInInProcessStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInInProcessStateImplCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$SignInInProcessStateImpl>
    implements _$$SignInInProcessStateImplCopyWith<$Res> {
  __$$SignInInProcessStateImplCopyWithImpl(_$SignInInProcessStateImpl _value,
      $Res Function(_$SignInInProcessStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignInInProcessStateImpl implements _SignInInProcessState {
  const _$SignInInProcessStateImpl();

  @override
  String toString() {
    return 'SignInState.inProcess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInInProcessStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProcess,
    required TResult Function() sucess,
    required TResult Function(String? message) error,
  }) {
    return inProcess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProcess,
    TResult? Function()? sucess,
    TResult? Function(String? message)? error,
  }) {
    return inProcess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProcess,
    TResult Function()? sucess,
    TResult Function(String? message)? error,
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
    required TResult Function(_SignInInitialState value) initial,
    required TResult Function(_SignInInProcessState value) inProcess,
    required TResult Function(_SignInSucessState value) sucess,
    required TResult Function(_SignInErrorState value) error,
  }) {
    return inProcess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInInitialState value)? initial,
    TResult? Function(_SignInInProcessState value)? inProcess,
    TResult? Function(_SignInSucessState value)? sucess,
    TResult? Function(_SignInErrorState value)? error,
  }) {
    return inProcess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInInitialState value)? initial,
    TResult Function(_SignInInProcessState value)? inProcess,
    TResult Function(_SignInSucessState value)? sucess,
    TResult Function(_SignInErrorState value)? error,
    required TResult orElse(),
  }) {
    if (inProcess != null) {
      return inProcess(this);
    }
    return orElse();
  }
}

abstract class _SignInInProcessState implements SignInState {
  const factory _SignInInProcessState() = _$SignInInProcessStateImpl;
}

/// @nodoc
abstract class _$$SignInSucessStateImplCopyWith<$Res> {
  factory _$$SignInSucessStateImplCopyWith(_$SignInSucessStateImpl value,
          $Res Function(_$SignInSucessStateImpl) then) =
      __$$SignInSucessStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInSucessStateImplCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$SignInSucessStateImpl>
    implements _$$SignInSucessStateImplCopyWith<$Res> {
  __$$SignInSucessStateImplCopyWithImpl(_$SignInSucessStateImpl _value,
      $Res Function(_$SignInSucessStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignInSucessStateImpl implements _SignInSucessState {
  const _$SignInSucessStateImpl();

  @override
  String toString() {
    return 'SignInState.sucess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignInSucessStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProcess,
    required TResult Function() sucess,
    required TResult Function(String? message) error,
  }) {
    return sucess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProcess,
    TResult? Function()? sucess,
    TResult? Function(String? message)? error,
  }) {
    return sucess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProcess,
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
    required TResult Function(_SignInInitialState value) initial,
    required TResult Function(_SignInInProcessState value) inProcess,
    required TResult Function(_SignInSucessState value) sucess,
    required TResult Function(_SignInErrorState value) error,
  }) {
    return sucess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInInitialState value)? initial,
    TResult? Function(_SignInInProcessState value)? inProcess,
    TResult? Function(_SignInSucessState value)? sucess,
    TResult? Function(_SignInErrorState value)? error,
  }) {
    return sucess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInInitialState value)? initial,
    TResult Function(_SignInInProcessState value)? inProcess,
    TResult Function(_SignInSucessState value)? sucess,
    TResult Function(_SignInErrorState value)? error,
    required TResult orElse(),
  }) {
    if (sucess != null) {
      return sucess(this);
    }
    return orElse();
  }
}

abstract class _SignInSucessState implements SignInState {
  const factory _SignInSucessState() = _$SignInSucessStateImpl;
}

/// @nodoc
abstract class _$$SignInErrorStateImplCopyWith<$Res> {
  factory _$$SignInErrorStateImplCopyWith(_$SignInErrorStateImpl value,
          $Res Function(_$SignInErrorStateImpl) then) =
      __$$SignInErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$SignInErrorStateImplCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$SignInErrorStateImpl>
    implements _$$SignInErrorStateImplCopyWith<$Res> {
  __$$SignInErrorStateImplCopyWithImpl(_$SignInErrorStateImpl _value,
      $Res Function(_$SignInErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$SignInErrorStateImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SignInErrorStateImpl implements _SignInErrorState {
  const _$SignInErrorStateImpl(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'SignInState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInErrorStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInErrorStateImplCopyWith<_$SignInErrorStateImpl> get copyWith =>
      __$$SignInErrorStateImplCopyWithImpl<_$SignInErrorStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProcess,
    required TResult Function() sucess,
    required TResult Function(String? message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProcess,
    TResult? Function()? sucess,
    TResult? Function(String? message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProcess,
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
    required TResult Function(_SignInInitialState value) initial,
    required TResult Function(_SignInInProcessState value) inProcess,
    required TResult Function(_SignInSucessState value) sucess,
    required TResult Function(_SignInErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInInitialState value)? initial,
    TResult? Function(_SignInInProcessState value)? inProcess,
    TResult? Function(_SignInSucessState value)? sucess,
    TResult? Function(_SignInErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInInitialState value)? initial,
    TResult Function(_SignInInProcessState value)? inProcess,
    TResult Function(_SignInSucessState value)? sucess,
    TResult Function(_SignInErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _SignInErrorState implements SignInState {
  const factory _SignInErrorState(final String? message) =
      _$SignInErrorStateImpl;

  String? get message;
  @JsonKey(ignore: true)
  _$$SignInErrorStateImplCopyWith<_$SignInErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
