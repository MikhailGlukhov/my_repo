// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connectivity_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ConnectivityState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() connected,
    required TResult Function() offline,
    required TResult Function() vpn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? connected,
    TResult? Function()? offline,
    TResult? Function()? vpn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? connected,
    TResult Function()? offline,
    TResult Function()? vpn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(ConnectedState value) connected,
    required TResult Function(OfflineState value) offline,
    required TResult Function(VpnlState value) vpn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(ConnectedState value)? connected,
    TResult? Function(OfflineState value)? offline,
    TResult? Function(VpnlState value)? vpn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(ConnectedState value)? connected,
    TResult Function(OfflineState value)? offline,
    TResult Function(VpnlState value)? vpn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectivityStateCopyWith<$Res> {
  factory $ConnectivityStateCopyWith(
          ConnectivityState value, $Res Function(ConnectivityState) then) =
      _$ConnectivityStateCopyWithImpl<$Res, ConnectivityState>;
}

/// @nodoc
class _$ConnectivityStateCopyWithImpl<$Res, $Val extends ConnectivityState>
    implements $ConnectivityStateCopyWith<$Res> {
  _$ConnectivityStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialStateImplCopyWith<$Res> {
  factory _$$InitialStateImplCopyWith(
          _$InitialStateImpl value, $Res Function(_$InitialStateImpl) then) =
      __$$InitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialStateImplCopyWithImpl<$Res>
    extends _$ConnectivityStateCopyWithImpl<$Res, _$InitialStateImpl>
    implements _$$InitialStateImplCopyWith<$Res> {
  __$$InitialStateImplCopyWithImpl(
      _$InitialStateImpl _value, $Res Function(_$InitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialStateImpl implements InitialState {
  const _$InitialStateImpl();

  @override
  String toString() {
    return 'ConnectivityState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() connected,
    required TResult Function() offline,
    required TResult Function() vpn,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? connected,
    TResult? Function()? offline,
    TResult? Function()? vpn,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? connected,
    TResult Function()? offline,
    TResult Function()? vpn,
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
    required TResult Function(InitialState value) initial,
    required TResult Function(ConnectedState value) connected,
    required TResult Function(OfflineState value) offline,
    required TResult Function(VpnlState value) vpn,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(ConnectedState value)? connected,
    TResult? Function(OfflineState value)? offline,
    TResult? Function(VpnlState value)? vpn,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(ConnectedState value)? connected,
    TResult Function(OfflineState value)? offline,
    TResult Function(VpnlState value)? vpn,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialState implements ConnectivityState {
  const factory InitialState() = _$InitialStateImpl;
}

/// @nodoc
abstract class _$$ConnectedStateImplCopyWith<$Res> {
  factory _$$ConnectedStateImplCopyWith(_$ConnectedStateImpl value,
          $Res Function(_$ConnectedStateImpl) then) =
      __$$ConnectedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConnectedStateImplCopyWithImpl<$Res>
    extends _$ConnectivityStateCopyWithImpl<$Res, _$ConnectedStateImpl>
    implements _$$ConnectedStateImplCopyWith<$Res> {
  __$$ConnectedStateImplCopyWithImpl(
      _$ConnectedStateImpl _value, $Res Function(_$ConnectedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ConnectedStateImpl implements ConnectedState {
  const _$ConnectedStateImpl();

  @override
  String toString() {
    return 'ConnectivityState.connected()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ConnectedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() connected,
    required TResult Function() offline,
    required TResult Function() vpn,
  }) {
    return connected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? connected,
    TResult? Function()? offline,
    TResult? Function()? vpn,
  }) {
    return connected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? connected,
    TResult Function()? offline,
    TResult Function()? vpn,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(ConnectedState value) connected,
    required TResult Function(OfflineState value) offline,
    required TResult Function(VpnlState value) vpn,
  }) {
    return connected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(ConnectedState value)? connected,
    TResult? Function(OfflineState value)? offline,
    TResult? Function(VpnlState value)? vpn,
  }) {
    return connected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(ConnectedState value)? connected,
    TResult Function(OfflineState value)? offline,
    TResult Function(VpnlState value)? vpn,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(this);
    }
    return orElse();
  }
}

abstract class ConnectedState implements ConnectivityState {
  const factory ConnectedState() = _$ConnectedStateImpl;
}

/// @nodoc
abstract class _$$OfflineStateImplCopyWith<$Res> {
  factory _$$OfflineStateImplCopyWith(
          _$OfflineStateImpl value, $Res Function(_$OfflineStateImpl) then) =
      __$$OfflineStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OfflineStateImplCopyWithImpl<$Res>
    extends _$ConnectivityStateCopyWithImpl<$Res, _$OfflineStateImpl>
    implements _$$OfflineStateImplCopyWith<$Res> {
  __$$OfflineStateImplCopyWithImpl(
      _$OfflineStateImpl _value, $Res Function(_$OfflineStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OfflineStateImpl implements OfflineState {
  const _$OfflineStateImpl();

  @override
  String toString() {
    return 'ConnectivityState.offline()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OfflineStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() connected,
    required TResult Function() offline,
    required TResult Function() vpn,
  }) {
    return offline();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? connected,
    TResult? Function()? offline,
    TResult? Function()? vpn,
  }) {
    return offline?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? connected,
    TResult Function()? offline,
    TResult Function()? vpn,
    required TResult orElse(),
  }) {
    if (offline != null) {
      return offline();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(ConnectedState value) connected,
    required TResult Function(OfflineState value) offline,
    required TResult Function(VpnlState value) vpn,
  }) {
    return offline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(ConnectedState value)? connected,
    TResult? Function(OfflineState value)? offline,
    TResult? Function(VpnlState value)? vpn,
  }) {
    return offline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(ConnectedState value)? connected,
    TResult Function(OfflineState value)? offline,
    TResult Function(VpnlState value)? vpn,
    required TResult orElse(),
  }) {
    if (offline != null) {
      return offline(this);
    }
    return orElse();
  }
}

abstract class OfflineState implements ConnectivityState {
  const factory OfflineState() = _$OfflineStateImpl;
}

/// @nodoc
abstract class _$$VpnlStateImplCopyWith<$Res> {
  factory _$$VpnlStateImplCopyWith(
          _$VpnlStateImpl value, $Res Function(_$VpnlStateImpl) then) =
      __$$VpnlStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VpnlStateImplCopyWithImpl<$Res>
    extends _$ConnectivityStateCopyWithImpl<$Res, _$VpnlStateImpl>
    implements _$$VpnlStateImplCopyWith<$Res> {
  __$$VpnlStateImplCopyWithImpl(
      _$VpnlStateImpl _value, $Res Function(_$VpnlStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$VpnlStateImpl implements VpnlState {
  const _$VpnlStateImpl();

  @override
  String toString() {
    return 'ConnectivityState.vpn()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$VpnlStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() connected,
    required TResult Function() offline,
    required TResult Function() vpn,
  }) {
    return vpn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? connected,
    TResult? Function()? offline,
    TResult? Function()? vpn,
  }) {
    return vpn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? connected,
    TResult Function()? offline,
    TResult Function()? vpn,
    required TResult orElse(),
  }) {
    if (vpn != null) {
      return vpn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(ConnectedState value) connected,
    required TResult Function(OfflineState value) offline,
    required TResult Function(VpnlState value) vpn,
  }) {
    return vpn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(ConnectedState value)? connected,
    TResult? Function(OfflineState value)? offline,
    TResult? Function(VpnlState value)? vpn,
  }) {
    return vpn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(ConnectedState value)? connected,
    TResult Function(OfflineState value)? offline,
    TResult Function(VpnlState value)? vpn,
    required TResult orElse(),
  }) {
    if (vpn != null) {
      return vpn(this);
    }
    return orElse();
  }
}

abstract class VpnlState implements ConnectivityState {
  const factory VpnlState() = _$VpnlStateImpl;
}
