// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timer_bloc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TimerBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value) selecteTimeRound,
    required TResult Function(int value) selecteTimeRest,
    required TResult Function(int value) selecteRounds,
    required TResult Function(bool reset) startTimer,
    required TResult Function(bool reset) stopTimer,
    required TResult Function() resetTimer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int value)? selecteTimeRound,
    TResult? Function(int value)? selecteTimeRest,
    TResult? Function(int value)? selecteRounds,
    TResult? Function(bool reset)? startTimer,
    TResult? Function(bool reset)? stopTimer,
    TResult? Function()? resetTimer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value)? selecteTimeRound,
    TResult Function(int value)? selecteTimeRest,
    TResult Function(int value)? selecteRounds,
    TResult Function(bool reset)? startTimer,
    TResult Function(bool reset)? stopTimer,
    TResult Function()? resetTimer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimerRoundTimeSelectEvent value) selecteTimeRound,
    required TResult Function(TimerRestTimeSelectEvent value) selecteTimeRest,
    required TResult Function(TimerRoundsSelectEvent value) selecteRounds,
    required TResult Function(TimerStartEvent value) startTimer,
    required TResult Function(TimerStopEvent value) stopTimer,
    required TResult Function(TimerResetEvent value) resetTimer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerRoundTimeSelectEvent value)? selecteTimeRound,
    TResult? Function(TimerRestTimeSelectEvent value)? selecteTimeRest,
    TResult? Function(TimerRoundsSelectEvent value)? selecteRounds,
    TResult? Function(TimerStartEvent value)? startTimer,
    TResult? Function(TimerStopEvent value)? stopTimer,
    TResult? Function(TimerResetEvent value)? resetTimer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerRoundTimeSelectEvent value)? selecteTimeRound,
    TResult Function(TimerRestTimeSelectEvent value)? selecteTimeRest,
    TResult Function(TimerRoundsSelectEvent value)? selecteRounds,
    TResult Function(TimerStartEvent value)? startTimer,
    TResult Function(TimerStopEvent value)? stopTimer,
    TResult Function(TimerResetEvent value)? resetTimer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerBlocEventCopyWith<$Res> {
  factory $TimerBlocEventCopyWith(
          TimerBlocEvent value, $Res Function(TimerBlocEvent) then) =
      _$TimerBlocEventCopyWithImpl<$Res, TimerBlocEvent>;
}

/// @nodoc
class _$TimerBlocEventCopyWithImpl<$Res, $Val extends TimerBlocEvent>
    implements $TimerBlocEventCopyWith<$Res> {
  _$TimerBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TimerRoundTimeSelectEventImplCopyWith<$Res> {
  factory _$$TimerRoundTimeSelectEventImplCopyWith(
          _$TimerRoundTimeSelectEventImpl value,
          $Res Function(_$TimerRoundTimeSelectEventImpl) then) =
      __$$TimerRoundTimeSelectEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int value});
}

/// @nodoc
class __$$TimerRoundTimeSelectEventImplCopyWithImpl<$Res>
    extends _$TimerBlocEventCopyWithImpl<$Res, _$TimerRoundTimeSelectEventImpl>
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
    return 'TimerBlocEvent.selecteTimeRound(value: $value)';
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
    required TResult Function(bool reset) startTimer,
    required TResult Function(bool reset) stopTimer,
    required TResult Function() resetTimer,
  }) {
    return selecteTimeRound(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int value)? selecteTimeRound,
    TResult? Function(int value)? selecteTimeRest,
    TResult? Function(int value)? selecteRounds,
    TResult? Function(bool reset)? startTimer,
    TResult? Function(bool reset)? stopTimer,
    TResult? Function()? resetTimer,
  }) {
    return selecteTimeRound?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value)? selecteTimeRound,
    TResult Function(int value)? selecteTimeRest,
    TResult Function(int value)? selecteRounds,
    TResult Function(bool reset)? startTimer,
    TResult Function(bool reset)? stopTimer,
    TResult Function()? resetTimer,
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
    required TResult Function(TimerStartEvent value) startTimer,
    required TResult Function(TimerStopEvent value) stopTimer,
    required TResult Function(TimerResetEvent value) resetTimer,
  }) {
    return selecteTimeRound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerRoundTimeSelectEvent value)? selecteTimeRound,
    TResult? Function(TimerRestTimeSelectEvent value)? selecteTimeRest,
    TResult? Function(TimerRoundsSelectEvent value)? selecteRounds,
    TResult? Function(TimerStartEvent value)? startTimer,
    TResult? Function(TimerStopEvent value)? stopTimer,
    TResult? Function(TimerResetEvent value)? resetTimer,
  }) {
    return selecteTimeRound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerRoundTimeSelectEvent value)? selecteTimeRound,
    TResult Function(TimerRestTimeSelectEvent value)? selecteTimeRest,
    TResult Function(TimerRoundsSelectEvent value)? selecteRounds,
    TResult Function(TimerStartEvent value)? startTimer,
    TResult Function(TimerStopEvent value)? stopTimer,
    TResult Function(TimerResetEvent value)? resetTimer,
    required TResult orElse(),
  }) {
    if (selecteTimeRound != null) {
      return selecteTimeRound(this);
    }
    return orElse();
  }
}

abstract class TimerRoundTimeSelectEvent implements TimerBlocEvent {
  const factory TimerRoundTimeSelectEvent(final int value) =
      _$TimerRoundTimeSelectEventImpl;

  int get value;
  @JsonKey(ignore: true)
  _$$TimerRoundTimeSelectEventImplCopyWith<_$TimerRoundTimeSelectEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TimerRestTimeSelectEventImplCopyWith<$Res> {
  factory _$$TimerRestTimeSelectEventImplCopyWith(
          _$TimerRestTimeSelectEventImpl value,
          $Res Function(_$TimerRestTimeSelectEventImpl) then) =
      __$$TimerRestTimeSelectEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int value});
}

/// @nodoc
class __$$TimerRestTimeSelectEventImplCopyWithImpl<$Res>
    extends _$TimerBlocEventCopyWithImpl<$Res, _$TimerRestTimeSelectEventImpl>
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
    return 'TimerBlocEvent.selecteTimeRest(value: $value)';
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
    required TResult Function(bool reset) startTimer,
    required TResult Function(bool reset) stopTimer,
    required TResult Function() resetTimer,
  }) {
    return selecteTimeRest(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int value)? selecteTimeRound,
    TResult? Function(int value)? selecteTimeRest,
    TResult? Function(int value)? selecteRounds,
    TResult? Function(bool reset)? startTimer,
    TResult? Function(bool reset)? stopTimer,
    TResult? Function()? resetTimer,
  }) {
    return selecteTimeRest?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value)? selecteTimeRound,
    TResult Function(int value)? selecteTimeRest,
    TResult Function(int value)? selecteRounds,
    TResult Function(bool reset)? startTimer,
    TResult Function(bool reset)? stopTimer,
    TResult Function()? resetTimer,
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
    required TResult Function(TimerStartEvent value) startTimer,
    required TResult Function(TimerStopEvent value) stopTimer,
    required TResult Function(TimerResetEvent value) resetTimer,
  }) {
    return selecteTimeRest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerRoundTimeSelectEvent value)? selecteTimeRound,
    TResult? Function(TimerRestTimeSelectEvent value)? selecteTimeRest,
    TResult? Function(TimerRoundsSelectEvent value)? selecteRounds,
    TResult? Function(TimerStartEvent value)? startTimer,
    TResult? Function(TimerStopEvent value)? stopTimer,
    TResult? Function(TimerResetEvent value)? resetTimer,
  }) {
    return selecteTimeRest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerRoundTimeSelectEvent value)? selecteTimeRound,
    TResult Function(TimerRestTimeSelectEvent value)? selecteTimeRest,
    TResult Function(TimerRoundsSelectEvent value)? selecteRounds,
    TResult Function(TimerStartEvent value)? startTimer,
    TResult Function(TimerStopEvent value)? stopTimer,
    TResult Function(TimerResetEvent value)? resetTimer,
    required TResult orElse(),
  }) {
    if (selecteTimeRest != null) {
      return selecteTimeRest(this);
    }
    return orElse();
  }
}

abstract class TimerRestTimeSelectEvent implements TimerBlocEvent {
  const factory TimerRestTimeSelectEvent(final int value) =
      _$TimerRestTimeSelectEventImpl;

  int get value;
  @JsonKey(ignore: true)
  _$$TimerRestTimeSelectEventImplCopyWith<_$TimerRestTimeSelectEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TimerRoundsSelectEventImplCopyWith<$Res> {
  factory _$$TimerRoundsSelectEventImplCopyWith(
          _$TimerRoundsSelectEventImpl value,
          $Res Function(_$TimerRoundsSelectEventImpl) then) =
      __$$TimerRoundsSelectEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int value});
}

/// @nodoc
class __$$TimerRoundsSelectEventImplCopyWithImpl<$Res>
    extends _$TimerBlocEventCopyWithImpl<$Res, _$TimerRoundsSelectEventImpl>
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
    return 'TimerBlocEvent.selecteRounds(value: $value)';
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
    required TResult Function(bool reset) startTimer,
    required TResult Function(bool reset) stopTimer,
    required TResult Function() resetTimer,
  }) {
    return selecteRounds(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int value)? selecteTimeRound,
    TResult? Function(int value)? selecteTimeRest,
    TResult? Function(int value)? selecteRounds,
    TResult? Function(bool reset)? startTimer,
    TResult? Function(bool reset)? stopTimer,
    TResult? Function()? resetTimer,
  }) {
    return selecteRounds?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value)? selecteTimeRound,
    TResult Function(int value)? selecteTimeRest,
    TResult Function(int value)? selecteRounds,
    TResult Function(bool reset)? startTimer,
    TResult Function(bool reset)? stopTimer,
    TResult Function()? resetTimer,
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
    required TResult Function(TimerStartEvent value) startTimer,
    required TResult Function(TimerStopEvent value) stopTimer,
    required TResult Function(TimerResetEvent value) resetTimer,
  }) {
    return selecteRounds(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerRoundTimeSelectEvent value)? selecteTimeRound,
    TResult? Function(TimerRestTimeSelectEvent value)? selecteTimeRest,
    TResult? Function(TimerRoundsSelectEvent value)? selecteRounds,
    TResult? Function(TimerStartEvent value)? startTimer,
    TResult? Function(TimerStopEvent value)? stopTimer,
    TResult? Function(TimerResetEvent value)? resetTimer,
  }) {
    return selecteRounds?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerRoundTimeSelectEvent value)? selecteTimeRound,
    TResult Function(TimerRestTimeSelectEvent value)? selecteTimeRest,
    TResult Function(TimerRoundsSelectEvent value)? selecteRounds,
    TResult Function(TimerStartEvent value)? startTimer,
    TResult Function(TimerStopEvent value)? stopTimer,
    TResult Function(TimerResetEvent value)? resetTimer,
    required TResult orElse(),
  }) {
    if (selecteRounds != null) {
      return selecteRounds(this);
    }
    return orElse();
  }
}

abstract class TimerRoundsSelectEvent implements TimerBlocEvent {
  const factory TimerRoundsSelectEvent(final int value) =
      _$TimerRoundsSelectEventImpl;

  int get value;
  @JsonKey(ignore: true)
  _$$TimerRoundsSelectEventImplCopyWith<_$TimerRoundsSelectEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TimerStartEventImplCopyWith<$Res> {
  factory _$$TimerStartEventImplCopyWith(_$TimerStartEventImpl value,
          $Res Function(_$TimerStartEventImpl) then) =
      __$$TimerStartEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool reset});
}

/// @nodoc
class __$$TimerStartEventImplCopyWithImpl<$Res>
    extends _$TimerBlocEventCopyWithImpl<$Res, _$TimerStartEventImpl>
    implements _$$TimerStartEventImplCopyWith<$Res> {
  __$$TimerStartEventImplCopyWithImpl(
      _$TimerStartEventImpl _value, $Res Function(_$TimerStartEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reset = null,
  }) {
    return _then(_$TimerStartEventImpl(
      null == reset
          ? _value.reset
          : reset // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TimerStartEventImpl implements TimerStartEvent {
  const _$TimerStartEventImpl(this.reset);

  @override
  final bool reset;

  @override
  String toString() {
    return 'TimerBlocEvent.startTimer(reset: $reset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimerStartEventImpl &&
            (identical(other.reset, reset) || other.reset == reset));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimerStartEventImplCopyWith<_$TimerStartEventImpl> get copyWith =>
      __$$TimerStartEventImplCopyWithImpl<_$TimerStartEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value) selecteTimeRound,
    required TResult Function(int value) selecteTimeRest,
    required TResult Function(int value) selecteRounds,
    required TResult Function(bool reset) startTimer,
    required TResult Function(bool reset) stopTimer,
    required TResult Function() resetTimer,
  }) {
    return startTimer(reset);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int value)? selecteTimeRound,
    TResult? Function(int value)? selecteTimeRest,
    TResult? Function(int value)? selecteRounds,
    TResult? Function(bool reset)? startTimer,
    TResult? Function(bool reset)? stopTimer,
    TResult? Function()? resetTimer,
  }) {
    return startTimer?.call(reset);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value)? selecteTimeRound,
    TResult Function(int value)? selecteTimeRest,
    TResult Function(int value)? selecteRounds,
    TResult Function(bool reset)? startTimer,
    TResult Function(bool reset)? stopTimer,
    TResult Function()? resetTimer,
    required TResult orElse(),
  }) {
    if (startTimer != null) {
      return startTimer(reset);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimerRoundTimeSelectEvent value) selecteTimeRound,
    required TResult Function(TimerRestTimeSelectEvent value) selecteTimeRest,
    required TResult Function(TimerRoundsSelectEvent value) selecteRounds,
    required TResult Function(TimerStartEvent value) startTimer,
    required TResult Function(TimerStopEvent value) stopTimer,
    required TResult Function(TimerResetEvent value) resetTimer,
  }) {
    return startTimer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerRoundTimeSelectEvent value)? selecteTimeRound,
    TResult? Function(TimerRestTimeSelectEvent value)? selecteTimeRest,
    TResult? Function(TimerRoundsSelectEvent value)? selecteRounds,
    TResult? Function(TimerStartEvent value)? startTimer,
    TResult? Function(TimerStopEvent value)? stopTimer,
    TResult? Function(TimerResetEvent value)? resetTimer,
  }) {
    return startTimer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerRoundTimeSelectEvent value)? selecteTimeRound,
    TResult Function(TimerRestTimeSelectEvent value)? selecteTimeRest,
    TResult Function(TimerRoundsSelectEvent value)? selecteRounds,
    TResult Function(TimerStartEvent value)? startTimer,
    TResult Function(TimerStopEvent value)? stopTimer,
    TResult Function(TimerResetEvent value)? resetTimer,
    required TResult orElse(),
  }) {
    if (startTimer != null) {
      return startTimer(this);
    }
    return orElse();
  }
}

abstract class TimerStartEvent implements TimerBlocEvent {
  const factory TimerStartEvent(final bool reset) = _$TimerStartEventImpl;

  bool get reset;
  @JsonKey(ignore: true)
  _$$TimerStartEventImplCopyWith<_$TimerStartEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TimerStopEventImplCopyWith<$Res> {
  factory _$$TimerStopEventImplCopyWith(_$TimerStopEventImpl value,
          $Res Function(_$TimerStopEventImpl) then) =
      __$$TimerStopEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool reset});
}

/// @nodoc
class __$$TimerStopEventImplCopyWithImpl<$Res>
    extends _$TimerBlocEventCopyWithImpl<$Res, _$TimerStopEventImpl>
    implements _$$TimerStopEventImplCopyWith<$Res> {
  __$$TimerStopEventImplCopyWithImpl(
      _$TimerStopEventImpl _value, $Res Function(_$TimerStopEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reset = null,
  }) {
    return _then(_$TimerStopEventImpl(
      null == reset
          ? _value.reset
          : reset // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TimerStopEventImpl implements TimerStopEvent {
  const _$TimerStopEventImpl(this.reset);

  @override
  final bool reset;

  @override
  String toString() {
    return 'TimerBlocEvent.stopTimer(reset: $reset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimerStopEventImpl &&
            (identical(other.reset, reset) || other.reset == reset));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimerStopEventImplCopyWith<_$TimerStopEventImpl> get copyWith =>
      __$$TimerStopEventImplCopyWithImpl<_$TimerStopEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value) selecteTimeRound,
    required TResult Function(int value) selecteTimeRest,
    required TResult Function(int value) selecteRounds,
    required TResult Function(bool reset) startTimer,
    required TResult Function(bool reset) stopTimer,
    required TResult Function() resetTimer,
  }) {
    return stopTimer(reset);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int value)? selecteTimeRound,
    TResult? Function(int value)? selecteTimeRest,
    TResult? Function(int value)? selecteRounds,
    TResult? Function(bool reset)? startTimer,
    TResult? Function(bool reset)? stopTimer,
    TResult? Function()? resetTimer,
  }) {
    return stopTimer?.call(reset);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value)? selecteTimeRound,
    TResult Function(int value)? selecteTimeRest,
    TResult Function(int value)? selecteRounds,
    TResult Function(bool reset)? startTimer,
    TResult Function(bool reset)? stopTimer,
    TResult Function()? resetTimer,
    required TResult orElse(),
  }) {
    if (stopTimer != null) {
      return stopTimer(reset);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimerRoundTimeSelectEvent value) selecteTimeRound,
    required TResult Function(TimerRestTimeSelectEvent value) selecteTimeRest,
    required TResult Function(TimerRoundsSelectEvent value) selecteRounds,
    required TResult Function(TimerStartEvent value) startTimer,
    required TResult Function(TimerStopEvent value) stopTimer,
    required TResult Function(TimerResetEvent value) resetTimer,
  }) {
    return stopTimer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerRoundTimeSelectEvent value)? selecteTimeRound,
    TResult? Function(TimerRestTimeSelectEvent value)? selecteTimeRest,
    TResult? Function(TimerRoundsSelectEvent value)? selecteRounds,
    TResult? Function(TimerStartEvent value)? startTimer,
    TResult? Function(TimerStopEvent value)? stopTimer,
    TResult? Function(TimerResetEvent value)? resetTimer,
  }) {
    return stopTimer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerRoundTimeSelectEvent value)? selecteTimeRound,
    TResult Function(TimerRestTimeSelectEvent value)? selecteTimeRest,
    TResult Function(TimerRoundsSelectEvent value)? selecteRounds,
    TResult Function(TimerStartEvent value)? startTimer,
    TResult Function(TimerStopEvent value)? stopTimer,
    TResult Function(TimerResetEvent value)? resetTimer,
    required TResult orElse(),
  }) {
    if (stopTimer != null) {
      return stopTimer(this);
    }
    return orElse();
  }
}

abstract class TimerStopEvent implements TimerBlocEvent {
  const factory TimerStopEvent(final bool reset) = _$TimerStopEventImpl;

  bool get reset;
  @JsonKey(ignore: true)
  _$$TimerStopEventImplCopyWith<_$TimerStopEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TimerResetEventImplCopyWith<$Res> {
  factory _$$TimerResetEventImplCopyWith(_$TimerResetEventImpl value,
          $Res Function(_$TimerResetEventImpl) then) =
      __$$TimerResetEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TimerResetEventImplCopyWithImpl<$Res>
    extends _$TimerBlocEventCopyWithImpl<$Res, _$TimerResetEventImpl>
    implements _$$TimerResetEventImplCopyWith<$Res> {
  __$$TimerResetEventImplCopyWithImpl(
      _$TimerResetEventImpl _value, $Res Function(_$TimerResetEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TimerResetEventImpl implements TimerResetEvent {
  const _$TimerResetEventImpl();

  @override
  String toString() {
    return 'TimerBlocEvent.resetTimer()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TimerResetEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value) selecteTimeRound,
    required TResult Function(int value) selecteTimeRest,
    required TResult Function(int value) selecteRounds,
    required TResult Function(bool reset) startTimer,
    required TResult Function(bool reset) stopTimer,
    required TResult Function() resetTimer,
  }) {
    return resetTimer();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int value)? selecteTimeRound,
    TResult? Function(int value)? selecteTimeRest,
    TResult? Function(int value)? selecteRounds,
    TResult? Function(bool reset)? startTimer,
    TResult? Function(bool reset)? stopTimer,
    TResult? Function()? resetTimer,
  }) {
    return resetTimer?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value)? selecteTimeRound,
    TResult Function(int value)? selecteTimeRest,
    TResult Function(int value)? selecteRounds,
    TResult Function(bool reset)? startTimer,
    TResult Function(bool reset)? stopTimer,
    TResult Function()? resetTimer,
    required TResult orElse(),
  }) {
    if (resetTimer != null) {
      return resetTimer();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimerRoundTimeSelectEvent value) selecteTimeRound,
    required TResult Function(TimerRestTimeSelectEvent value) selecteTimeRest,
    required TResult Function(TimerRoundsSelectEvent value) selecteRounds,
    required TResult Function(TimerStartEvent value) startTimer,
    required TResult Function(TimerStopEvent value) stopTimer,
    required TResult Function(TimerResetEvent value) resetTimer,
  }) {
    return resetTimer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerRoundTimeSelectEvent value)? selecteTimeRound,
    TResult? Function(TimerRestTimeSelectEvent value)? selecteTimeRest,
    TResult? Function(TimerRoundsSelectEvent value)? selecteRounds,
    TResult? Function(TimerStartEvent value)? startTimer,
    TResult? Function(TimerStopEvent value)? stopTimer,
    TResult? Function(TimerResetEvent value)? resetTimer,
  }) {
    return resetTimer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerRoundTimeSelectEvent value)? selecteTimeRound,
    TResult Function(TimerRestTimeSelectEvent value)? selecteTimeRest,
    TResult Function(TimerRoundsSelectEvent value)? selecteRounds,
    TResult Function(TimerStartEvent value)? startTimer,
    TResult Function(TimerStopEvent value)? stopTimer,
    TResult Function(TimerResetEvent value)? resetTimer,
    required TResult orElse(),
  }) {
    if (resetTimer != null) {
      return resetTimer(this);
    }
    return orElse();
  }
}

abstract class TimerResetEvent implements TimerBlocEvent {
  const factory TimerResetEvent() = _$TimerResetEventImpl;
}

/// @nodoc
mixin _$TimerState {
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
    required TResult Function(TumerSelectedState value) selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(TumerSelectedState value)? selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(TumerSelectedState value)? selected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerStateCopyWith<$Res> {
  factory $TimerStateCopyWith(
          TimerState value, $Res Function(TimerState) then) =
      _$TimerStateCopyWithImpl<$Res, TimerState>;
}

/// @nodoc
class _$TimerStateCopyWithImpl<$Res, $Val extends TimerState>
    implements $TimerStateCopyWith<$Res> {
  _$TimerStateCopyWithImpl(this._value, this._then);

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
    extends _$TimerStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'TimerState.initial()';
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
    required TResult Function(TumerSelectedState value) selected,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(TumerSelectedState value)? selected,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(TumerSelectedState value)? selected,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements TimerState {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$TumerSelectedStateImplCopyWith<$Res> {
  factory _$$TumerSelectedStateImplCopyWith(_$TumerSelectedStateImpl value,
          $Res Function(_$TumerSelectedStateImpl) then) =
      __$$TumerSelectedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TumerSelectedStateImplCopyWithImpl<$Res>
    extends _$TimerStateCopyWithImpl<$Res, _$TumerSelectedStateImpl>
    implements _$$TumerSelectedStateImplCopyWith<$Res> {
  __$$TumerSelectedStateImplCopyWithImpl(_$TumerSelectedStateImpl _value,
      $Res Function(_$TumerSelectedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TumerSelectedStateImpl implements TumerSelectedState {
  const _$TumerSelectedStateImpl();

  @override
  String toString() {
    return 'TimerState.selected()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TumerSelectedStateImpl);
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
    required TResult Function(TumerSelectedState value) selected,
  }) {
    return selected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(TumerSelectedState value)? selected,
  }) {
    return selected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(TumerSelectedState value)? selected,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(this);
    }
    return orElse();
  }
}

abstract class TumerSelectedState implements TimerState {
  const factory TumerSelectedState() = _$TumerSelectedStateImpl;
}
