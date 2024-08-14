// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TimerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() pause,
    required TResult Function() resume,
    required TResult Function() reset,
    required TResult Function(int duration) tick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? pause,
    TResult? Function()? resume,
    TResult? Function()? reset,
    TResult? Function(int duration)? tick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? pause,
    TResult Function()? resume,
    TResult Function()? reset,
    TResult Function(int duration)? tick,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimerStartEvent value) started,
    required TResult Function(TimerPauseEvent value) pause,
    required TResult Function(TimerResumeEvent value) resume,
    required TResult Function(TimerResetEvent value) reset,
    required TResult Function(TimerTickEvent value) tick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerStartEvent value)? started,
    TResult? Function(TimerPauseEvent value)? pause,
    TResult? Function(TimerResumeEvent value)? resume,
    TResult? Function(TimerResetEvent value)? reset,
    TResult? Function(TimerTickEvent value)? tick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerStartEvent value)? started,
    TResult Function(TimerPauseEvent value)? pause,
    TResult Function(TimerResumeEvent value)? resume,
    TResult Function(TimerResetEvent value)? reset,
    TResult Function(TimerTickEvent value)? tick,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerEventCopyWith<$Res> {
  factory $TimerEventCopyWith(
          TimerEvent value, $Res Function(TimerEvent) then) =
      _$TimerEventCopyWithImpl<$Res, TimerEvent>;
}

/// @nodoc
class _$TimerEventCopyWithImpl<$Res, $Val extends TimerEvent>
    implements $TimerEventCopyWith<$Res> {
  _$TimerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TimerStartEventImplCopyWith<$Res> {
  factory _$$TimerStartEventImplCopyWith(_$TimerStartEventImpl value,
          $Res Function(_$TimerStartEventImpl) then) =
      __$$TimerStartEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TimerStartEventImplCopyWithImpl<$Res>
    extends _$TimerEventCopyWithImpl<$Res, _$TimerStartEventImpl>
    implements _$$TimerStartEventImplCopyWith<$Res> {
  __$$TimerStartEventImplCopyWithImpl(
      _$TimerStartEventImpl _value, $Res Function(_$TimerStartEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TimerStartEventImpl implements TimerStartEvent {
  const _$TimerStartEventImpl();

  @override
  String toString() {
    return 'TimerEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TimerStartEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() pause,
    required TResult Function() resume,
    required TResult Function() reset,
    required TResult Function(int duration) tick,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? pause,
    TResult? Function()? resume,
    TResult? Function()? reset,
    TResult? Function(int duration)? tick,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? pause,
    TResult Function()? resume,
    TResult Function()? reset,
    TResult Function(int duration)? tick,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimerStartEvent value) started,
    required TResult Function(TimerPauseEvent value) pause,
    required TResult Function(TimerResumeEvent value) resume,
    required TResult Function(TimerResetEvent value) reset,
    required TResult Function(TimerTickEvent value) tick,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerStartEvent value)? started,
    TResult? Function(TimerPauseEvent value)? pause,
    TResult? Function(TimerResumeEvent value)? resume,
    TResult? Function(TimerResetEvent value)? reset,
    TResult? Function(TimerTickEvent value)? tick,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerStartEvent value)? started,
    TResult Function(TimerPauseEvent value)? pause,
    TResult Function(TimerResumeEvent value)? resume,
    TResult Function(TimerResetEvent value)? reset,
    TResult Function(TimerTickEvent value)? tick,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class TimerStartEvent implements TimerEvent {
  const factory TimerStartEvent() = _$TimerStartEventImpl;
}

/// @nodoc
abstract class _$$TimerPauseEventImplCopyWith<$Res> {
  factory _$$TimerPauseEventImplCopyWith(_$TimerPauseEventImpl value,
          $Res Function(_$TimerPauseEventImpl) then) =
      __$$TimerPauseEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TimerPauseEventImplCopyWithImpl<$Res>
    extends _$TimerEventCopyWithImpl<$Res, _$TimerPauseEventImpl>
    implements _$$TimerPauseEventImplCopyWith<$Res> {
  __$$TimerPauseEventImplCopyWithImpl(
      _$TimerPauseEventImpl _value, $Res Function(_$TimerPauseEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TimerPauseEventImpl implements TimerPauseEvent {
  const _$TimerPauseEventImpl();

  @override
  String toString() {
    return 'TimerEvent.pause()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TimerPauseEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() pause,
    required TResult Function() resume,
    required TResult Function() reset,
    required TResult Function(int duration) tick,
  }) {
    return pause();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? pause,
    TResult? Function()? resume,
    TResult? Function()? reset,
    TResult? Function(int duration)? tick,
  }) {
    return pause?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? pause,
    TResult Function()? resume,
    TResult Function()? reset,
    TResult Function(int duration)? tick,
    required TResult orElse(),
  }) {
    if (pause != null) {
      return pause();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimerStartEvent value) started,
    required TResult Function(TimerPauseEvent value) pause,
    required TResult Function(TimerResumeEvent value) resume,
    required TResult Function(TimerResetEvent value) reset,
    required TResult Function(TimerTickEvent value) tick,
  }) {
    return pause(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerStartEvent value)? started,
    TResult? Function(TimerPauseEvent value)? pause,
    TResult? Function(TimerResumeEvent value)? resume,
    TResult? Function(TimerResetEvent value)? reset,
    TResult? Function(TimerTickEvent value)? tick,
  }) {
    return pause?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerStartEvent value)? started,
    TResult Function(TimerPauseEvent value)? pause,
    TResult Function(TimerResumeEvent value)? resume,
    TResult Function(TimerResetEvent value)? reset,
    TResult Function(TimerTickEvent value)? tick,
    required TResult orElse(),
  }) {
    if (pause != null) {
      return pause(this);
    }
    return orElse();
  }
}

abstract class TimerPauseEvent implements TimerEvent {
  const factory TimerPauseEvent() = _$TimerPauseEventImpl;
}

/// @nodoc
abstract class _$$TimerResumeEventImplCopyWith<$Res> {
  factory _$$TimerResumeEventImplCopyWith(_$TimerResumeEventImpl value,
          $Res Function(_$TimerResumeEventImpl) then) =
      __$$TimerResumeEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TimerResumeEventImplCopyWithImpl<$Res>
    extends _$TimerEventCopyWithImpl<$Res, _$TimerResumeEventImpl>
    implements _$$TimerResumeEventImplCopyWith<$Res> {
  __$$TimerResumeEventImplCopyWithImpl(_$TimerResumeEventImpl _value,
      $Res Function(_$TimerResumeEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TimerResumeEventImpl implements TimerResumeEvent {
  const _$TimerResumeEventImpl();

  @override
  String toString() {
    return 'TimerEvent.resume()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TimerResumeEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() pause,
    required TResult Function() resume,
    required TResult Function() reset,
    required TResult Function(int duration) tick,
  }) {
    return resume();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? pause,
    TResult? Function()? resume,
    TResult? Function()? reset,
    TResult? Function(int duration)? tick,
  }) {
    return resume?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? pause,
    TResult Function()? resume,
    TResult Function()? reset,
    TResult Function(int duration)? tick,
    required TResult orElse(),
  }) {
    if (resume != null) {
      return resume();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimerStartEvent value) started,
    required TResult Function(TimerPauseEvent value) pause,
    required TResult Function(TimerResumeEvent value) resume,
    required TResult Function(TimerResetEvent value) reset,
    required TResult Function(TimerTickEvent value) tick,
  }) {
    return resume(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerStartEvent value)? started,
    TResult? Function(TimerPauseEvent value)? pause,
    TResult? Function(TimerResumeEvent value)? resume,
    TResult? Function(TimerResetEvent value)? reset,
    TResult? Function(TimerTickEvent value)? tick,
  }) {
    return resume?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerStartEvent value)? started,
    TResult Function(TimerPauseEvent value)? pause,
    TResult Function(TimerResumeEvent value)? resume,
    TResult Function(TimerResetEvent value)? reset,
    TResult Function(TimerTickEvent value)? tick,
    required TResult orElse(),
  }) {
    if (resume != null) {
      return resume(this);
    }
    return orElse();
  }
}

abstract class TimerResumeEvent implements TimerEvent {
  const factory TimerResumeEvent() = _$TimerResumeEventImpl;
}

/// @nodoc
abstract class _$$TimerResetEventImplCopyWith<$Res> {
  factory _$$TimerResetEventImplCopyWith(_$TimerResetEventImpl value,
          $Res Function(_$TimerResetEventImpl) then) =
      __$$TimerResetEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TimerResetEventImplCopyWithImpl<$Res>
    extends _$TimerEventCopyWithImpl<$Res, _$TimerResetEventImpl>
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
    return 'TimerEvent.reset()';
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
    required TResult Function() started,
    required TResult Function() pause,
    required TResult Function() resume,
    required TResult Function() reset,
    required TResult Function(int duration) tick,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? pause,
    TResult? Function()? resume,
    TResult? Function()? reset,
    TResult? Function(int duration)? tick,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? pause,
    TResult Function()? resume,
    TResult Function()? reset,
    TResult Function(int duration)? tick,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimerStartEvent value) started,
    required TResult Function(TimerPauseEvent value) pause,
    required TResult Function(TimerResumeEvent value) resume,
    required TResult Function(TimerResetEvent value) reset,
    required TResult Function(TimerTickEvent value) tick,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerStartEvent value)? started,
    TResult? Function(TimerPauseEvent value)? pause,
    TResult? Function(TimerResumeEvent value)? resume,
    TResult? Function(TimerResetEvent value)? reset,
    TResult? Function(TimerTickEvent value)? tick,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerStartEvent value)? started,
    TResult Function(TimerPauseEvent value)? pause,
    TResult Function(TimerResumeEvent value)? resume,
    TResult Function(TimerResetEvent value)? reset,
    TResult Function(TimerTickEvent value)? tick,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class TimerResetEvent implements TimerEvent {
  const factory TimerResetEvent() = _$TimerResetEventImpl;
}

/// @nodoc
abstract class _$$TimerTickEventImplCopyWith<$Res> {
  factory _$$TimerTickEventImplCopyWith(_$TimerTickEventImpl value,
          $Res Function(_$TimerTickEventImpl) then) =
      __$$TimerTickEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int duration});
}

/// @nodoc
class __$$TimerTickEventImplCopyWithImpl<$Res>
    extends _$TimerEventCopyWithImpl<$Res, _$TimerTickEventImpl>
    implements _$$TimerTickEventImplCopyWith<$Res> {
  __$$TimerTickEventImplCopyWithImpl(
      _$TimerTickEventImpl _value, $Res Function(_$TimerTickEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_$TimerTickEventImpl(
      null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TimerTickEventImpl implements TimerTickEvent {
  const _$TimerTickEventImpl(this.duration);

  @override
  final int duration;

  @override
  String toString() {
    return 'TimerEvent.tick(duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimerTickEventImpl &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimerTickEventImplCopyWith<_$TimerTickEventImpl> get copyWith =>
      __$$TimerTickEventImplCopyWithImpl<_$TimerTickEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() pause,
    required TResult Function() resume,
    required TResult Function() reset,
    required TResult Function(int duration) tick,
  }) {
    return tick(duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? pause,
    TResult? Function()? resume,
    TResult? Function()? reset,
    TResult? Function(int duration)? tick,
  }) {
    return tick?.call(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? pause,
    TResult Function()? resume,
    TResult Function()? reset,
    TResult Function(int duration)? tick,
    required TResult orElse(),
  }) {
    if (tick != null) {
      return tick(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimerStartEvent value) started,
    required TResult Function(TimerPauseEvent value) pause,
    required TResult Function(TimerResumeEvent value) resume,
    required TResult Function(TimerResetEvent value) reset,
    required TResult Function(TimerTickEvent value) tick,
  }) {
    return tick(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerStartEvent value)? started,
    TResult? Function(TimerPauseEvent value)? pause,
    TResult? Function(TimerResumeEvent value)? resume,
    TResult? Function(TimerResetEvent value)? reset,
    TResult? Function(TimerTickEvent value)? tick,
  }) {
    return tick?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerStartEvent value)? started,
    TResult Function(TimerPauseEvent value)? pause,
    TResult Function(TimerResumeEvent value)? resume,
    TResult Function(TimerResetEvent value)? reset,
    TResult Function(TimerTickEvent value)? tick,
    required TResult orElse(),
  }) {
    if (tick != null) {
      return tick(this);
    }
    return orElse();
  }
}

abstract class TimerTickEvent implements TimerEvent {
  const factory TimerTickEvent(final int duration) = _$TimerTickEventImpl;

  int get duration;
  @JsonKey(ignore: true)
  _$$TimerTickEventImplCopyWith<_$TimerTickEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TimerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() pause,
    required TResult Function() completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function()? pause,
    TResult? Function()? completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? pause,
    TResult Function()? completed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimerInitialState value) initial,
    required TResult Function(TimerInProgressState value) inProgress,
    required TResult Function(TimerPauseState value) pause,
    required TResult Function(TimerCompletedState value) completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerInitialState value)? initial,
    TResult? Function(TimerInProgressState value)? inProgress,
    TResult? Function(TimerPauseState value)? pause,
    TResult? Function(TimerCompletedState value)? completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerInitialState value)? initial,
    TResult Function(TimerInProgressState value)? inProgress,
    TResult Function(TimerPauseState value)? pause,
    TResult Function(TimerCompletedState value)? completed,
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
abstract class _$$TimerInitialStateImplCopyWith<$Res> {
  factory _$$TimerInitialStateImplCopyWith(_$TimerInitialStateImpl value,
          $Res Function(_$TimerInitialStateImpl) then) =
      __$$TimerInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TimerInitialStateImplCopyWithImpl<$Res>
    extends _$TimerStateCopyWithImpl<$Res, _$TimerInitialStateImpl>
    implements _$$TimerInitialStateImplCopyWith<$Res> {
  __$$TimerInitialStateImplCopyWithImpl(_$TimerInitialStateImpl _value,
      $Res Function(_$TimerInitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TimerInitialStateImpl implements TimerInitialState {
  const _$TimerInitialStateImpl();

  @override
  String toString() {
    return 'TimerState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TimerInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() pause,
    required TResult Function() completed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function()? pause,
    TResult? Function()? completed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? pause,
    TResult Function()? completed,
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
    required TResult Function(TimerInitialState value) initial,
    required TResult Function(TimerInProgressState value) inProgress,
    required TResult Function(TimerPauseState value) pause,
    required TResult Function(TimerCompletedState value) completed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerInitialState value)? initial,
    TResult? Function(TimerInProgressState value)? inProgress,
    TResult? Function(TimerPauseState value)? pause,
    TResult? Function(TimerCompletedState value)? completed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerInitialState value)? initial,
    TResult Function(TimerInProgressState value)? inProgress,
    TResult Function(TimerPauseState value)? pause,
    TResult Function(TimerCompletedState value)? completed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class TimerInitialState implements TimerState {
  const factory TimerInitialState() = _$TimerInitialStateImpl;
}

/// @nodoc
abstract class _$$TimerInProgressStateImplCopyWith<$Res> {
  factory _$$TimerInProgressStateImplCopyWith(_$TimerInProgressStateImpl value,
          $Res Function(_$TimerInProgressStateImpl) then) =
      __$$TimerInProgressStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TimerInProgressStateImplCopyWithImpl<$Res>
    extends _$TimerStateCopyWithImpl<$Res, _$TimerInProgressStateImpl>
    implements _$$TimerInProgressStateImplCopyWith<$Res> {
  __$$TimerInProgressStateImplCopyWithImpl(_$TimerInProgressStateImpl _value,
      $Res Function(_$TimerInProgressStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TimerInProgressStateImpl implements TimerInProgressState {
  const _$TimerInProgressStateImpl();

  @override
  String toString() {
    return 'TimerState.inProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimerInProgressStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() pause,
    required TResult Function() completed,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function()? pause,
    TResult? Function()? completed,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? pause,
    TResult Function()? completed,
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
    required TResult Function(TimerInitialState value) initial,
    required TResult Function(TimerInProgressState value) inProgress,
    required TResult Function(TimerPauseState value) pause,
    required TResult Function(TimerCompletedState value) completed,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerInitialState value)? initial,
    TResult? Function(TimerInProgressState value)? inProgress,
    TResult? Function(TimerPauseState value)? pause,
    TResult? Function(TimerCompletedState value)? completed,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerInitialState value)? initial,
    TResult Function(TimerInProgressState value)? inProgress,
    TResult Function(TimerPauseState value)? pause,
    TResult Function(TimerCompletedState value)? completed,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class TimerInProgressState implements TimerState {
  const factory TimerInProgressState() = _$TimerInProgressStateImpl;
}

/// @nodoc
abstract class _$$TimerPauseStateImplCopyWith<$Res> {
  factory _$$TimerPauseStateImplCopyWith(_$TimerPauseStateImpl value,
          $Res Function(_$TimerPauseStateImpl) then) =
      __$$TimerPauseStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TimerPauseStateImplCopyWithImpl<$Res>
    extends _$TimerStateCopyWithImpl<$Res, _$TimerPauseStateImpl>
    implements _$$TimerPauseStateImplCopyWith<$Res> {
  __$$TimerPauseStateImplCopyWithImpl(
      _$TimerPauseStateImpl _value, $Res Function(_$TimerPauseStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TimerPauseStateImpl implements TimerPauseState {
  const _$TimerPauseStateImpl();

  @override
  String toString() {
    return 'TimerState.pause()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TimerPauseStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() pause,
    required TResult Function() completed,
  }) {
    return pause();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function()? pause,
    TResult? Function()? completed,
  }) {
    return pause?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? pause,
    TResult Function()? completed,
    required TResult orElse(),
  }) {
    if (pause != null) {
      return pause();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimerInitialState value) initial,
    required TResult Function(TimerInProgressState value) inProgress,
    required TResult Function(TimerPauseState value) pause,
    required TResult Function(TimerCompletedState value) completed,
  }) {
    return pause(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerInitialState value)? initial,
    TResult? Function(TimerInProgressState value)? inProgress,
    TResult? Function(TimerPauseState value)? pause,
    TResult? Function(TimerCompletedState value)? completed,
  }) {
    return pause?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerInitialState value)? initial,
    TResult Function(TimerInProgressState value)? inProgress,
    TResult Function(TimerPauseState value)? pause,
    TResult Function(TimerCompletedState value)? completed,
    required TResult orElse(),
  }) {
    if (pause != null) {
      return pause(this);
    }
    return orElse();
  }
}

abstract class TimerPauseState implements TimerState {
  const factory TimerPauseState() = _$TimerPauseStateImpl;
}

/// @nodoc
abstract class _$$TimerCompletedStateImplCopyWith<$Res> {
  factory _$$TimerCompletedStateImplCopyWith(_$TimerCompletedStateImpl value,
          $Res Function(_$TimerCompletedStateImpl) then) =
      __$$TimerCompletedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TimerCompletedStateImplCopyWithImpl<$Res>
    extends _$TimerStateCopyWithImpl<$Res, _$TimerCompletedStateImpl>
    implements _$$TimerCompletedStateImplCopyWith<$Res> {
  __$$TimerCompletedStateImplCopyWithImpl(_$TimerCompletedStateImpl _value,
      $Res Function(_$TimerCompletedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TimerCompletedStateImpl implements TimerCompletedState {
  const _$TimerCompletedStateImpl();

  @override
  String toString() {
    return 'TimerState.completed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimerCompletedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() pause,
    required TResult Function() completed,
  }) {
    return completed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function()? pause,
    TResult? Function()? completed,
  }) {
    return completed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? pause,
    TResult Function()? completed,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimerInitialState value) initial,
    required TResult Function(TimerInProgressState value) inProgress,
    required TResult Function(TimerPauseState value) pause,
    required TResult Function(TimerCompletedState value) completed,
  }) {
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerInitialState value)? initial,
    TResult? Function(TimerInProgressState value)? inProgress,
    TResult? Function(TimerPauseState value)? pause,
    TResult? Function(TimerCompletedState value)? completed,
  }) {
    return completed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerInitialState value)? initial,
    TResult Function(TimerInProgressState value)? inProgress,
    TResult Function(TimerPauseState value)? pause,
    TResult Function(TimerCompletedState value)? completed,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }
}

abstract class TimerCompletedState implements TimerState {
  const factory TimerCompletedState() = _$TimerCompletedStateImpl;
}
