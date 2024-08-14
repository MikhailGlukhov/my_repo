// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timer_select_bloc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TimerSelectEvent {
  int get value => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value) selecteTimeRound,
    required TResult Function(int value) selecteTimeRest,
    required TResult Function(int value) selecteRounds,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int value)? selecteTimeRound,
    TResult? Function(int value)? selecteTimeRest,
    TResult? Function(int value)? selecteRounds,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value)? selecteTimeRound,
    TResult Function(int value)? selecteTimeRest,
    TResult Function(int value)? selecteRounds,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimerRoundTimeSelectEvent value) selecteTimeRound,
    required TResult Function(TimerRestTimeSelectEvent value) selecteTimeRest,
    required TResult Function(TimerRoundsSelectEvent value) selecteRounds,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerRoundTimeSelectEvent value)? selecteTimeRound,
    TResult? Function(TimerRestTimeSelectEvent value)? selecteTimeRest,
    TResult? Function(TimerRoundsSelectEvent value)? selecteRounds,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerRoundTimeSelectEvent value)? selecteTimeRound,
    TResult Function(TimerRestTimeSelectEvent value)? selecteTimeRest,
    TResult Function(TimerRoundsSelectEvent value)? selecteRounds,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TimerSelectEventCopyWith<TimerSelectEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerSelectEventCopyWith<$Res> {
  factory $TimerSelectEventCopyWith(
          TimerSelectEvent value, $Res Function(TimerSelectEvent) then) =
      _$TimerSelectEventCopyWithImpl<$Res, TimerSelectEvent>;
  @useResult
  $Res call({int value});
}

/// @nodoc
class _$TimerSelectEventCopyWithImpl<$Res, $Val extends TimerSelectEvent>
    implements $TimerSelectEventCopyWith<$Res> {
  _$TimerSelectEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimerRoundTimeSelectEventImplCopyWith<$Res>
    implements $TimerSelectEventCopyWith<$Res> {
  factory _$$TimerRoundTimeSelectEventImplCopyWith(
          _$TimerRoundTimeSelectEventImpl value,
          $Res Function(_$TimerRoundTimeSelectEventImpl) then) =
      __$$TimerRoundTimeSelectEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int value});
}

/// @nodoc
class __$$TimerRoundTimeSelectEventImplCopyWithImpl<$Res>
    extends _$TimerSelectEventCopyWithImpl<$Res,
        _$TimerRoundTimeSelectEventImpl>
    implements _$$TimerRoundTimeSelectEventImplCopyWith<$Res> {
  __$$TimerRoundTimeSelectEventImplCopyWithImpl(
      _$TimerRoundTimeSelectEventImpl _value,
      $Res Function(_$TimerRoundTimeSelectEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$TimerRoundTimeSelectEventImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TimerRoundTimeSelectEventImpl implements TimerRoundTimeSelectEvent {
  const _$TimerRoundTimeSelectEventImpl(this.value);

  @override
  final int value;

  @override
  String toString() {
    return 'TimerSelectEvent.selecteTimeRound(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimerRoundTimeSelectEventImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimerRoundTimeSelectEventImplCopyWith<_$TimerRoundTimeSelectEventImpl>
      get copyWith => __$$TimerRoundTimeSelectEventImplCopyWithImpl<
          _$TimerRoundTimeSelectEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value) selecteTimeRound,
    required TResult Function(int value) selecteTimeRest,
    required TResult Function(int value) selecteRounds,
  }) {
    return selecteTimeRound(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int value)? selecteTimeRound,
    TResult? Function(int value)? selecteTimeRest,
    TResult? Function(int value)? selecteRounds,
  }) {
    return selecteTimeRound?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value)? selecteTimeRound,
    TResult Function(int value)? selecteTimeRest,
    TResult Function(int value)? selecteRounds,
    required TResult orElse(),
  }) {
    if (selecteTimeRound != null) {
      return selecteTimeRound(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimerRoundTimeSelectEvent value) selecteTimeRound,
    required TResult Function(TimerRestTimeSelectEvent value) selecteTimeRest,
    required TResult Function(TimerRoundsSelectEvent value) selecteRounds,
  }) {
    return selecteTimeRound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerRoundTimeSelectEvent value)? selecteTimeRound,
    TResult? Function(TimerRestTimeSelectEvent value)? selecteTimeRest,
    TResult? Function(TimerRoundsSelectEvent value)? selecteRounds,
  }) {
    return selecteTimeRound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerRoundTimeSelectEvent value)? selecteTimeRound,
    TResult Function(TimerRestTimeSelectEvent value)? selecteTimeRest,
    TResult Function(TimerRoundsSelectEvent value)? selecteRounds,
    required TResult orElse(),
  }) {
    if (selecteTimeRound != null) {
      return selecteTimeRound(this);
    }
    return orElse();
  }
}

abstract class TimerRoundTimeSelectEvent implements TimerSelectEvent {
  const factory TimerRoundTimeSelectEvent(final int value) =
      _$TimerRoundTimeSelectEventImpl;

  @override
  int get value;
  @override
  @JsonKey(ignore: true)
  _$$TimerRoundTimeSelectEventImplCopyWith<_$TimerRoundTimeSelectEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TimerRestTimeSelectEventImplCopyWith<$Res>
    implements $TimerSelectEventCopyWith<$Res> {
  factory _$$TimerRestTimeSelectEventImplCopyWith(
          _$TimerRestTimeSelectEventImpl value,
          $Res Function(_$TimerRestTimeSelectEventImpl) then) =
      __$$TimerRestTimeSelectEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int value});
}

/// @nodoc
class __$$TimerRestTimeSelectEventImplCopyWithImpl<$Res>
    extends _$TimerSelectEventCopyWithImpl<$Res, _$TimerRestTimeSelectEventImpl>
    implements _$$TimerRestTimeSelectEventImplCopyWith<$Res> {
  __$$TimerRestTimeSelectEventImplCopyWithImpl(
      _$TimerRestTimeSelectEventImpl _value,
      $Res Function(_$TimerRestTimeSelectEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$TimerRestTimeSelectEventImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TimerRestTimeSelectEventImpl implements TimerRestTimeSelectEvent {
  const _$TimerRestTimeSelectEventImpl(this.value);

  @override
  final int value;

  @override
  String toString() {
    return 'TimerSelectEvent.selecteTimeRest(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimerRestTimeSelectEventImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimerRestTimeSelectEventImplCopyWith<_$TimerRestTimeSelectEventImpl>
      get copyWith => __$$TimerRestTimeSelectEventImplCopyWithImpl<
          _$TimerRestTimeSelectEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value) selecteTimeRound,
    required TResult Function(int value) selecteTimeRest,
    required TResult Function(int value) selecteRounds,
  }) {
    return selecteTimeRest(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int value)? selecteTimeRound,
    TResult? Function(int value)? selecteTimeRest,
    TResult? Function(int value)? selecteRounds,
  }) {
    return selecteTimeRest?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value)? selecteTimeRound,
    TResult Function(int value)? selecteTimeRest,
    TResult Function(int value)? selecteRounds,
    required TResult orElse(),
  }) {
    if (selecteTimeRest != null) {
      return selecteTimeRest(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimerRoundTimeSelectEvent value) selecteTimeRound,
    required TResult Function(TimerRestTimeSelectEvent value) selecteTimeRest,
    required TResult Function(TimerRoundsSelectEvent value) selecteRounds,
  }) {
    return selecteTimeRest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerRoundTimeSelectEvent value)? selecteTimeRound,
    TResult? Function(TimerRestTimeSelectEvent value)? selecteTimeRest,
    TResult? Function(TimerRoundsSelectEvent value)? selecteRounds,
  }) {
    return selecteTimeRest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerRoundTimeSelectEvent value)? selecteTimeRound,
    TResult Function(TimerRestTimeSelectEvent value)? selecteTimeRest,
    TResult Function(TimerRoundsSelectEvent value)? selecteRounds,
    required TResult orElse(),
  }) {
    if (selecteTimeRest != null) {
      return selecteTimeRest(this);
    }
    return orElse();
  }
}

abstract class TimerRestTimeSelectEvent implements TimerSelectEvent {
  const factory TimerRestTimeSelectEvent(final int value) =
      _$TimerRestTimeSelectEventImpl;

  @override
  int get value;
  @override
  @JsonKey(ignore: true)
  _$$TimerRestTimeSelectEventImplCopyWith<_$TimerRestTimeSelectEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TimerRoundsSelectEventImplCopyWith<$Res>
    implements $TimerSelectEventCopyWith<$Res> {
  factory _$$TimerRoundsSelectEventImplCopyWith(
          _$TimerRoundsSelectEventImpl value,
          $Res Function(_$TimerRoundsSelectEventImpl) then) =
      __$$TimerRoundsSelectEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int value});
}

/// @nodoc
class __$$TimerRoundsSelectEventImplCopyWithImpl<$Res>
    extends _$TimerSelectEventCopyWithImpl<$Res, _$TimerRoundsSelectEventImpl>
    implements _$$TimerRoundsSelectEventImplCopyWith<$Res> {
  __$$TimerRoundsSelectEventImplCopyWithImpl(
      _$TimerRoundsSelectEventImpl _value,
      $Res Function(_$TimerRoundsSelectEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$TimerRoundsSelectEventImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TimerRoundsSelectEventImpl implements TimerRoundsSelectEvent {
  const _$TimerRoundsSelectEventImpl(this.value);

  @override
  final int value;

  @override
  String toString() {
    return 'TimerSelectEvent.selecteRounds(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimerRoundsSelectEventImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimerRoundsSelectEventImplCopyWith<_$TimerRoundsSelectEventImpl>
      get copyWith => __$$TimerRoundsSelectEventImplCopyWithImpl<
          _$TimerRoundsSelectEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value) selecteTimeRound,
    required TResult Function(int value) selecteTimeRest,
    required TResult Function(int value) selecteRounds,
  }) {
    return selecteRounds(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int value)? selecteTimeRound,
    TResult? Function(int value)? selecteTimeRest,
    TResult? Function(int value)? selecteRounds,
  }) {
    return selecteRounds?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value)? selecteTimeRound,
    TResult Function(int value)? selecteTimeRest,
    TResult Function(int value)? selecteRounds,
    required TResult orElse(),
  }) {
    if (selecteRounds != null) {
      return selecteRounds(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimerRoundTimeSelectEvent value) selecteTimeRound,
    required TResult Function(TimerRestTimeSelectEvent value) selecteTimeRest,
    required TResult Function(TimerRoundsSelectEvent value) selecteRounds,
  }) {
    return selecteRounds(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerRoundTimeSelectEvent value)? selecteTimeRound,
    TResult? Function(TimerRestTimeSelectEvent value)? selecteTimeRest,
    TResult? Function(TimerRoundsSelectEvent value)? selecteRounds,
  }) {
    return selecteRounds?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerRoundTimeSelectEvent value)? selecteTimeRound,
    TResult Function(TimerRestTimeSelectEvent value)? selecteTimeRest,
    TResult Function(TimerRoundsSelectEvent value)? selecteRounds,
    required TResult orElse(),
  }) {
    if (selecteRounds != null) {
      return selecteRounds(this);
    }
    return orElse();
  }
}

abstract class TimerRoundsSelectEvent implements TimerSelectEvent {
  const factory TimerRoundsSelectEvent(final int value) =
      _$TimerRoundsSelectEventImpl;

  @override
  int get value;
  @override
  @JsonKey(ignore: true)
  _$$TimerRoundsSelectEventImplCopyWith<_$TimerRoundsSelectEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TimerSelectState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? selected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(TimerSelectedState value) selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(TimerSelectedState value)? selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(TimerSelectedState value)? selected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerSelectStateCopyWith<$Res> {
  factory $TimerSelectStateCopyWith(
          TimerSelectState value, $Res Function(TimerSelectState) then) =
      _$TimerSelectStateCopyWithImpl<$Res, TimerSelectState>;
}

/// @nodoc
class _$TimerSelectStateCopyWithImpl<$Res, $Val extends TimerSelectState>
    implements $TimerSelectStateCopyWith<$Res> {
  _$TimerSelectStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$TimerSelectStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'TimerSelectState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() selected,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? selected,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? selected,
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
    required TResult Function(Initial value) initial,
    required TResult Function(TimerSelectedState value) selected,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(TimerSelectedState value)? selected,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(TimerSelectedState value)? selected,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements TimerSelectState {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$TimerSelectedStateImplCopyWith<$Res> {
  factory _$$TimerSelectedStateImplCopyWith(_$TimerSelectedStateImpl value,
          $Res Function(_$TimerSelectedStateImpl) then) =
      __$$TimerSelectedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TimerSelectedStateImplCopyWithImpl<$Res>
    extends _$TimerSelectStateCopyWithImpl<$Res, _$TimerSelectedStateImpl>
    implements _$$TimerSelectedStateImplCopyWith<$Res> {
  __$$TimerSelectedStateImplCopyWithImpl(_$TimerSelectedStateImpl _value,
      $Res Function(_$TimerSelectedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TimerSelectedStateImpl implements TimerSelectedState {
  const _$TimerSelectedStateImpl();

  @override
  String toString() {
    return 'TimerSelectState.selected()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TimerSelectedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() selected,
  }) {
    return selected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? selected,
  }) {
    return selected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? selected,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(TimerSelectedState value) selected,
  }) {
    return selected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(TimerSelectedState value)? selected,
  }) {
    return selected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(TimerSelectedState value)? selected,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(this);
    }
    return orElse();
  }
}

abstract class TimerSelectedState implements TimerSelectState {
  const factory TimerSelectedState() = _$TimerSelectedStateImpl;
}
