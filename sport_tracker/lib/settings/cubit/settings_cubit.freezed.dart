// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SettingsState {
  Brightness get brightness => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Brightness brightness) brightness,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Brightness brightness)? brightness,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Brightness brightness)? brightness,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BrightnessState value) brightness,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BrightnessState value)? brightness,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BrightnessState value)? brightness,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsStateCopyWith<SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res, SettingsState>;
  @useResult
  $Res call({Brightness brightness});
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res, $Val extends SettingsState>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brightness = null,
  }) {
    return _then(_value.copyWith(
      brightness: null == brightness
          ? _value.brightness
          : brightness // ignore: cast_nullable_to_non_nullable
              as Brightness,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BrightnessStateImplCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$$BrightnessStateImplCopyWith(_$BrightnessStateImpl value,
          $Res Function(_$BrightnessStateImpl) then) =
      __$$BrightnessStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Brightness brightness});
}

/// @nodoc
class __$$BrightnessStateImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$BrightnessStateImpl>
    implements _$$BrightnessStateImplCopyWith<$Res> {
  __$$BrightnessStateImplCopyWithImpl(
      _$BrightnessStateImpl _value, $Res Function(_$BrightnessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brightness = null,
  }) {
    return _then(_$BrightnessStateImpl(
      null == brightness
          ? _value.brightness
          : brightness // ignore: cast_nullable_to_non_nullable
              as Brightness,
    ));
  }
}

/// @nodoc

class _$BrightnessStateImpl implements _BrightnessState {
  const _$BrightnessStateImpl(this.brightness);

  @override
  final Brightness brightness;

  @override
  String toString() {
    return 'SettingsState.brightness(brightness: $brightness)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrightnessStateImpl &&
            (identical(other.brightness, brightness) ||
                other.brightness == brightness));
  }

  @override
  int get hashCode => Object.hash(runtimeType, brightness);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BrightnessStateImplCopyWith<_$BrightnessStateImpl> get copyWith =>
      __$$BrightnessStateImplCopyWithImpl<_$BrightnessStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Brightness brightness) brightness,
  }) {
    return brightness(this.brightness);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Brightness brightness)? brightness,
  }) {
    return brightness?.call(this.brightness);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Brightness brightness)? brightness,
    required TResult orElse(),
  }) {
    if (brightness != null) {
      return brightness(this.brightness);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BrightnessState value) brightness,
  }) {
    return brightness(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BrightnessState value)? brightness,
  }) {
    return brightness?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BrightnessState value)? brightness,
    required TResult orElse(),
  }) {
    if (brightness != null) {
      return brightness(this);
    }
    return orElse();
  }
}

abstract class _BrightnessState implements SettingsState {
  const factory _BrightnessState(final Brightness brightness) =
      _$BrightnessStateImpl;

  @override
  Brightness get brightness;
  @override
  @JsonKey(ignore: true)
  _$$BrightnessStateImplCopyWith<_$BrightnessStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
