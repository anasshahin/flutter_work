// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip_plan_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TripPlanEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() incrementEvent,
    required TResult Function(BuildContext context) selectDateRangeEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? incrementEvent,
    TResult? Function(BuildContext context)? selectDateRangeEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? incrementEvent,
    TResult Function(BuildContext context)? selectDateRangeEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(IncrementEvent value) incrementEvent,
    required TResult Function(SelectDateRangeEvent value) selectDateRangeEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(IncrementEvent value)? incrementEvent,
    TResult? Function(SelectDateRangeEvent value)? selectDateRangeEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(IncrementEvent value)? incrementEvent,
    TResult Function(SelectDateRangeEvent value)? selectDateRangeEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripPlanEventCopyWith<$Res> {
  factory $TripPlanEventCopyWith(
          TripPlanEvent value, $Res Function(TripPlanEvent) then) =
      _$TripPlanEventCopyWithImpl<$Res, TripPlanEvent>;
}

/// @nodoc
class _$TripPlanEventCopyWithImpl<$Res, $Val extends TripPlanEvent>
    implements $TripPlanEventCopyWith<$Res> {
  _$TripPlanEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$TripPlanEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'TripPlanEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() incrementEvent,
    required TResult Function(BuildContext context) selectDateRangeEvent,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? incrementEvent,
    TResult? Function(BuildContext context)? selectDateRangeEvent,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? incrementEvent,
    TResult Function(BuildContext context)? selectDateRangeEvent,
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
    required TResult Function(_Started value) started,
    required TResult Function(IncrementEvent value) incrementEvent,
    required TResult Function(SelectDateRangeEvent value) selectDateRangeEvent,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(IncrementEvent value)? incrementEvent,
    TResult? Function(SelectDateRangeEvent value)? selectDateRangeEvent,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(IncrementEvent value)? incrementEvent,
    TResult Function(SelectDateRangeEvent value)? selectDateRangeEvent,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements TripPlanEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$IncrementEventImplCopyWith<$Res> {
  factory _$$IncrementEventImplCopyWith(_$IncrementEventImpl value,
          $Res Function(_$IncrementEventImpl) then) =
      __$$IncrementEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IncrementEventImplCopyWithImpl<$Res>
    extends _$TripPlanEventCopyWithImpl<$Res, _$IncrementEventImpl>
    implements _$$IncrementEventImplCopyWith<$Res> {
  __$$IncrementEventImplCopyWithImpl(
      _$IncrementEventImpl _value, $Res Function(_$IncrementEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$IncrementEventImpl implements IncrementEvent {
  const _$IncrementEventImpl();

  @override
  String toString() {
    return 'TripPlanEvent.incrementEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IncrementEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() incrementEvent,
    required TResult Function(BuildContext context) selectDateRangeEvent,
  }) {
    return incrementEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? incrementEvent,
    TResult? Function(BuildContext context)? selectDateRangeEvent,
  }) {
    return incrementEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? incrementEvent,
    TResult Function(BuildContext context)? selectDateRangeEvent,
    required TResult orElse(),
  }) {
    if (incrementEvent != null) {
      return incrementEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(IncrementEvent value) incrementEvent,
    required TResult Function(SelectDateRangeEvent value) selectDateRangeEvent,
  }) {
    return incrementEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(IncrementEvent value)? incrementEvent,
    TResult? Function(SelectDateRangeEvent value)? selectDateRangeEvent,
  }) {
    return incrementEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(IncrementEvent value)? incrementEvent,
    TResult Function(SelectDateRangeEvent value)? selectDateRangeEvent,
    required TResult orElse(),
  }) {
    if (incrementEvent != null) {
      return incrementEvent(this);
    }
    return orElse();
  }
}

abstract class IncrementEvent implements TripPlanEvent {
  const factory IncrementEvent() = _$IncrementEventImpl;
}

/// @nodoc
abstract class _$$SelectDateRangeEventImplCopyWith<$Res> {
  factory _$$SelectDateRangeEventImplCopyWith(_$SelectDateRangeEventImpl value,
          $Res Function(_$SelectDateRangeEventImpl) then) =
      __$$SelectDateRangeEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$SelectDateRangeEventImplCopyWithImpl<$Res>
    extends _$TripPlanEventCopyWithImpl<$Res, _$SelectDateRangeEventImpl>
    implements _$$SelectDateRangeEventImplCopyWith<$Res> {
  __$$SelectDateRangeEventImplCopyWithImpl(_$SelectDateRangeEventImpl _value,
      $Res Function(_$SelectDateRangeEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$SelectDateRangeEventImpl(
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$SelectDateRangeEventImpl implements SelectDateRangeEvent {
  const _$SelectDateRangeEventImpl(this.context);

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'TripPlanEvent.selectDateRangeEvent(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectDateRangeEventImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectDateRangeEventImplCopyWith<_$SelectDateRangeEventImpl>
      get copyWith =>
          __$$SelectDateRangeEventImplCopyWithImpl<_$SelectDateRangeEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() incrementEvent,
    required TResult Function(BuildContext context) selectDateRangeEvent,
  }) {
    return selectDateRangeEvent(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? incrementEvent,
    TResult? Function(BuildContext context)? selectDateRangeEvent,
  }) {
    return selectDateRangeEvent?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? incrementEvent,
    TResult Function(BuildContext context)? selectDateRangeEvent,
    required TResult orElse(),
  }) {
    if (selectDateRangeEvent != null) {
      return selectDateRangeEvent(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(IncrementEvent value) incrementEvent,
    required TResult Function(SelectDateRangeEvent value) selectDateRangeEvent,
  }) {
    return selectDateRangeEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(IncrementEvent value)? incrementEvent,
    TResult? Function(SelectDateRangeEvent value)? selectDateRangeEvent,
  }) {
    return selectDateRangeEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(IncrementEvent value)? incrementEvent,
    TResult Function(SelectDateRangeEvent value)? selectDateRangeEvent,
    required TResult orElse(),
  }) {
    if (selectDateRangeEvent != null) {
      return selectDateRangeEvent(this);
    }
    return orElse();
  }
}

abstract class SelectDateRangeEvent implements TripPlanEvent {
  const factory SelectDateRangeEvent(final BuildContext context) =
      _$SelectDateRangeEventImpl;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$SelectDateRangeEventImplCopyWith<_$SelectDateRangeEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TripPlanState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() successIncrementState,
    required TResult Function(int daysTrip, String lastDay, String firstDay)
        selectDateRangeState,
    required TResult Function(
            List<List<dynamic>> controllerAddPlan, List<String> controllerType)
        controllerAddPlanState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? successIncrementState,
    TResult? Function(int daysTrip, String lastDay, String firstDay)?
        selectDateRangeState,
    TResult? Function(
            List<List<dynamic>> controllerAddPlan, List<String> controllerType)?
        controllerAddPlanState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? successIncrementState,
    TResult Function(int daysTrip, String lastDay, String firstDay)?
        selectDateRangeState,
    TResult Function(
            List<List<dynamic>> controllerAddPlan, List<String> controllerType)?
        controllerAddPlanState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SuccessIncrement value) successIncrementState,
    required TResult Function(SelectDateRangeState value) selectDateRangeState,
    required TResult Function(ControllerAddPlan value) controllerAddPlanState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SuccessIncrement value)? successIncrementState,
    TResult? Function(SelectDateRangeState value)? selectDateRangeState,
    TResult? Function(ControllerAddPlan value)? controllerAddPlanState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SuccessIncrement value)? successIncrementState,
    TResult Function(SelectDateRangeState value)? selectDateRangeState,
    TResult Function(ControllerAddPlan value)? controllerAddPlanState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripPlanStateCopyWith<$Res> {
  factory $TripPlanStateCopyWith(
          TripPlanState value, $Res Function(TripPlanState) then) =
      _$TripPlanStateCopyWithImpl<$Res, TripPlanState>;
}

/// @nodoc
class _$TripPlanStateCopyWithImpl<$Res, $Val extends TripPlanState>
    implements $TripPlanStateCopyWith<$Res> {
  _$TripPlanStateCopyWithImpl(this._value, this._then);

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
    extends _$TripPlanStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'TripPlanState.initial()';
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
    required TResult Function() successIncrementState,
    required TResult Function(int daysTrip, String lastDay, String firstDay)
        selectDateRangeState,
    required TResult Function(
            List<List<dynamic>> controllerAddPlan, List<String> controllerType)
        controllerAddPlanState,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? successIncrementState,
    TResult? Function(int daysTrip, String lastDay, String firstDay)?
        selectDateRangeState,
    TResult? Function(
            List<List<dynamic>> controllerAddPlan, List<String> controllerType)?
        controllerAddPlanState,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? successIncrementState,
    TResult Function(int daysTrip, String lastDay, String firstDay)?
        selectDateRangeState,
    TResult Function(
            List<List<dynamic>> controllerAddPlan, List<String> controllerType)?
        controllerAddPlanState,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(SuccessIncrement value) successIncrementState,
    required TResult Function(SelectDateRangeState value) selectDateRangeState,
    required TResult Function(ControllerAddPlan value) controllerAddPlanState,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SuccessIncrement value)? successIncrementState,
    TResult? Function(SelectDateRangeState value)? selectDateRangeState,
    TResult? Function(ControllerAddPlan value)? controllerAddPlanState,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SuccessIncrement value)? successIncrementState,
    TResult Function(SelectDateRangeState value)? selectDateRangeState,
    TResult Function(ControllerAddPlan value)? controllerAddPlanState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TripPlanState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$SuccessIncrementImplCopyWith<$Res> {
  factory _$$SuccessIncrementImplCopyWith(_$SuccessIncrementImpl value,
          $Res Function(_$SuccessIncrementImpl) then) =
      __$$SuccessIncrementImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessIncrementImplCopyWithImpl<$Res>
    extends _$TripPlanStateCopyWithImpl<$Res, _$SuccessIncrementImpl>
    implements _$$SuccessIncrementImplCopyWith<$Res> {
  __$$SuccessIncrementImplCopyWithImpl(_$SuccessIncrementImpl _value,
      $Res Function(_$SuccessIncrementImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SuccessIncrementImpl implements SuccessIncrement {
  const _$SuccessIncrementImpl();

  @override
  String toString() {
    return 'TripPlanState.successIncrementState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessIncrementImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() successIncrementState,
    required TResult Function(int daysTrip, String lastDay, String firstDay)
        selectDateRangeState,
    required TResult Function(
            List<List<dynamic>> controllerAddPlan, List<String> controllerType)
        controllerAddPlanState,
  }) {
    return successIncrementState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? successIncrementState,
    TResult? Function(int daysTrip, String lastDay, String firstDay)?
        selectDateRangeState,
    TResult? Function(
            List<List<dynamic>> controllerAddPlan, List<String> controllerType)?
        controllerAddPlanState,
  }) {
    return successIncrementState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? successIncrementState,
    TResult Function(int daysTrip, String lastDay, String firstDay)?
        selectDateRangeState,
    TResult Function(
            List<List<dynamic>> controllerAddPlan, List<String> controllerType)?
        controllerAddPlanState,
    required TResult orElse(),
  }) {
    if (successIncrementState != null) {
      return successIncrementState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SuccessIncrement value) successIncrementState,
    required TResult Function(SelectDateRangeState value) selectDateRangeState,
    required TResult Function(ControllerAddPlan value) controllerAddPlanState,
  }) {
    return successIncrementState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SuccessIncrement value)? successIncrementState,
    TResult? Function(SelectDateRangeState value)? selectDateRangeState,
    TResult? Function(ControllerAddPlan value)? controllerAddPlanState,
  }) {
    return successIncrementState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SuccessIncrement value)? successIncrementState,
    TResult Function(SelectDateRangeState value)? selectDateRangeState,
    TResult Function(ControllerAddPlan value)? controllerAddPlanState,
    required TResult orElse(),
  }) {
    if (successIncrementState != null) {
      return successIncrementState(this);
    }
    return orElse();
  }
}

abstract class SuccessIncrement implements TripPlanState {
  const factory SuccessIncrement() = _$SuccessIncrementImpl;
}

/// @nodoc
abstract class _$$SelectDateRangeStateImplCopyWith<$Res> {
  factory _$$SelectDateRangeStateImplCopyWith(_$SelectDateRangeStateImpl value,
          $Res Function(_$SelectDateRangeStateImpl) then) =
      __$$SelectDateRangeStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int daysTrip, String lastDay, String firstDay});
}

/// @nodoc
class __$$SelectDateRangeStateImplCopyWithImpl<$Res>
    extends _$TripPlanStateCopyWithImpl<$Res, _$SelectDateRangeStateImpl>
    implements _$$SelectDateRangeStateImplCopyWith<$Res> {
  __$$SelectDateRangeStateImplCopyWithImpl(_$SelectDateRangeStateImpl _value,
      $Res Function(_$SelectDateRangeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? daysTrip = null,
    Object? lastDay = null,
    Object? firstDay = null,
  }) {
    return _then(_$SelectDateRangeStateImpl(
      null == daysTrip
          ? _value.daysTrip
          : daysTrip // ignore: cast_nullable_to_non_nullable
              as int,
      null == lastDay
          ? _value.lastDay
          : lastDay // ignore: cast_nullable_to_non_nullable
              as String,
      null == firstDay
          ? _value.firstDay
          : firstDay // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SelectDateRangeStateImpl implements SelectDateRangeState {
  const _$SelectDateRangeStateImpl(this.daysTrip, this.lastDay, this.firstDay);

  @override
  final int daysTrip;
  @override
  final String lastDay;
  @override
  final String firstDay;

  @override
  String toString() {
    return 'TripPlanState.selectDateRangeState(daysTrip: $daysTrip, lastDay: $lastDay, firstDay: $firstDay)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectDateRangeStateImpl &&
            (identical(other.daysTrip, daysTrip) ||
                other.daysTrip == daysTrip) &&
            (identical(other.lastDay, lastDay) || other.lastDay == lastDay) &&
            (identical(other.firstDay, firstDay) ||
                other.firstDay == firstDay));
  }

  @override
  int get hashCode => Object.hash(runtimeType, daysTrip, lastDay, firstDay);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectDateRangeStateImplCopyWith<_$SelectDateRangeStateImpl>
      get copyWith =>
          __$$SelectDateRangeStateImplCopyWithImpl<_$SelectDateRangeStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() successIncrementState,
    required TResult Function(int daysTrip, String lastDay, String firstDay)
        selectDateRangeState,
    required TResult Function(
            List<List<dynamic>> controllerAddPlan, List<String> controllerType)
        controllerAddPlanState,
  }) {
    return selectDateRangeState(daysTrip, lastDay, firstDay);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? successIncrementState,
    TResult? Function(int daysTrip, String lastDay, String firstDay)?
        selectDateRangeState,
    TResult? Function(
            List<List<dynamic>> controllerAddPlan, List<String> controllerType)?
        controllerAddPlanState,
  }) {
    return selectDateRangeState?.call(daysTrip, lastDay, firstDay);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? successIncrementState,
    TResult Function(int daysTrip, String lastDay, String firstDay)?
        selectDateRangeState,
    TResult Function(
            List<List<dynamic>> controllerAddPlan, List<String> controllerType)?
        controllerAddPlanState,
    required TResult orElse(),
  }) {
    if (selectDateRangeState != null) {
      return selectDateRangeState(daysTrip, lastDay, firstDay);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SuccessIncrement value) successIncrementState,
    required TResult Function(SelectDateRangeState value) selectDateRangeState,
    required TResult Function(ControllerAddPlan value) controllerAddPlanState,
  }) {
    return selectDateRangeState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SuccessIncrement value)? successIncrementState,
    TResult? Function(SelectDateRangeState value)? selectDateRangeState,
    TResult? Function(ControllerAddPlan value)? controllerAddPlanState,
  }) {
    return selectDateRangeState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SuccessIncrement value)? successIncrementState,
    TResult Function(SelectDateRangeState value)? selectDateRangeState,
    TResult Function(ControllerAddPlan value)? controllerAddPlanState,
    required TResult orElse(),
  }) {
    if (selectDateRangeState != null) {
      return selectDateRangeState(this);
    }
    return orElse();
  }
}

abstract class SelectDateRangeState implements TripPlanState {
  const factory SelectDateRangeState(
          final int daysTrip, final String lastDay, final String firstDay) =
      _$SelectDateRangeStateImpl;

  int get daysTrip;
  String get lastDay;
  String get firstDay;
  @JsonKey(ignore: true)
  _$$SelectDateRangeStateImplCopyWith<_$SelectDateRangeStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ControllerAddPlanImplCopyWith<$Res> {
  factory _$$ControllerAddPlanImplCopyWith(_$ControllerAddPlanImpl value,
          $Res Function(_$ControllerAddPlanImpl) then) =
      __$$ControllerAddPlanImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<List<dynamic>> controllerAddPlan, List<String> controllerType});
}

/// @nodoc
class __$$ControllerAddPlanImplCopyWithImpl<$Res>
    extends _$TripPlanStateCopyWithImpl<$Res, _$ControllerAddPlanImpl>
    implements _$$ControllerAddPlanImplCopyWith<$Res> {
  __$$ControllerAddPlanImplCopyWithImpl(_$ControllerAddPlanImpl _value,
      $Res Function(_$ControllerAddPlanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controllerAddPlan = null,
    Object? controllerType = null,
  }) {
    return _then(_$ControllerAddPlanImpl(
      null == controllerAddPlan
          ? _value._controllerAddPlan
          : controllerAddPlan // ignore: cast_nullable_to_non_nullable
              as List<List<dynamic>>,
      null == controllerType
          ? _value._controllerType
          : controllerType // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$ControllerAddPlanImpl implements ControllerAddPlan {
  const _$ControllerAddPlanImpl(final List<List<dynamic>> controllerAddPlan,
      final List<String> controllerType)
      : _controllerAddPlan = controllerAddPlan,
        _controllerType = controllerType;

  final List<List<dynamic>> _controllerAddPlan;
  @override
  List<List<dynamic>> get controllerAddPlan {
    if (_controllerAddPlan is EqualUnmodifiableListView)
      return _controllerAddPlan;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_controllerAddPlan);
  }

  final List<String> _controllerType;
  @override
  List<String> get controllerType {
    if (_controllerType is EqualUnmodifiableListView) return _controllerType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_controllerType);
  }

  @override
  String toString() {
    return 'TripPlanState.controllerAddPlanState(controllerAddPlan: $controllerAddPlan, controllerType: $controllerType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ControllerAddPlanImpl &&
            const DeepCollectionEquality()
                .equals(other._controllerAddPlan, _controllerAddPlan) &&
            const DeepCollectionEquality()
                .equals(other._controllerType, _controllerType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_controllerAddPlan),
      const DeepCollectionEquality().hash(_controllerType));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ControllerAddPlanImplCopyWith<_$ControllerAddPlanImpl> get copyWith =>
      __$$ControllerAddPlanImplCopyWithImpl<_$ControllerAddPlanImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() successIncrementState,
    required TResult Function(int daysTrip, String lastDay, String firstDay)
        selectDateRangeState,
    required TResult Function(
            List<List<dynamic>> controllerAddPlan, List<String> controllerType)
        controllerAddPlanState,
  }) {
    return controllerAddPlanState(controllerAddPlan, controllerType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? successIncrementState,
    TResult? Function(int daysTrip, String lastDay, String firstDay)?
        selectDateRangeState,
    TResult? Function(
            List<List<dynamic>> controllerAddPlan, List<String> controllerType)?
        controllerAddPlanState,
  }) {
    return controllerAddPlanState?.call(controllerAddPlan, controllerType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? successIncrementState,
    TResult Function(int daysTrip, String lastDay, String firstDay)?
        selectDateRangeState,
    TResult Function(
            List<List<dynamic>> controllerAddPlan, List<String> controllerType)?
        controllerAddPlanState,
    required TResult orElse(),
  }) {
    if (controllerAddPlanState != null) {
      return controllerAddPlanState(controllerAddPlan, controllerType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SuccessIncrement value) successIncrementState,
    required TResult Function(SelectDateRangeState value) selectDateRangeState,
    required TResult Function(ControllerAddPlan value) controllerAddPlanState,
  }) {
    return controllerAddPlanState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SuccessIncrement value)? successIncrementState,
    TResult? Function(SelectDateRangeState value)? selectDateRangeState,
    TResult? Function(ControllerAddPlan value)? controllerAddPlanState,
  }) {
    return controllerAddPlanState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SuccessIncrement value)? successIncrementState,
    TResult Function(SelectDateRangeState value)? selectDateRangeState,
    TResult Function(ControllerAddPlan value)? controllerAddPlanState,
    required TResult orElse(),
  }) {
    if (controllerAddPlanState != null) {
      return controllerAddPlanState(this);
    }
    return orElse();
  }
}

abstract class ControllerAddPlan implements TripPlanState {
  const factory ControllerAddPlan(final List<List<dynamic>> controllerAddPlan,
      final List<String> controllerType) = _$ControllerAddPlanImpl;

  List<List<dynamic>> get controllerAddPlan;
  List<String> get controllerType;
  @JsonKey(ignore: true)
  _$$ControllerAddPlanImplCopyWith<_$ControllerAddPlanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
