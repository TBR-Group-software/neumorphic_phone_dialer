// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CallEvent {
  String get phoneNumber => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) makeCall,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber)? makeCall,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? makeCall,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NakeCallEvent value) makeCall,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NakeCallEvent value)? makeCall,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NakeCallEvent value)? makeCall,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CallEventCopyWith<CallEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CallEventCopyWith<$Res> {
  factory $CallEventCopyWith(CallEvent value, $Res Function(CallEvent) then) =
      _$CallEventCopyWithImpl<$Res>;
  $Res call({String phoneNumber});
}

/// @nodoc
class _$CallEventCopyWithImpl<$Res> implements $CallEventCopyWith<$Res> {
  _$CallEventCopyWithImpl(this._value, this._then);

  final CallEvent _value;
  // ignore: unused_field
  final $Res Function(CallEvent) _then;

  @override
  $Res call({
    Object? phoneNumber = freezed,
  }) {
    return _then(_value.copyWith(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_NakeCallEventCopyWith<$Res>
    implements $CallEventCopyWith<$Res> {
  factory _$$_NakeCallEventCopyWith(
          _$_NakeCallEvent value, $Res Function(_$_NakeCallEvent) then) =
      __$$_NakeCallEventCopyWithImpl<$Res>;
  @override
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$_NakeCallEventCopyWithImpl<$Res> extends _$CallEventCopyWithImpl<$Res>
    implements _$$_NakeCallEventCopyWith<$Res> {
  __$$_NakeCallEventCopyWithImpl(
      _$_NakeCallEvent _value, $Res Function(_$_NakeCallEvent) _then)
      : super(_value, (v) => _then(v as _$_NakeCallEvent));

  @override
  _$_NakeCallEvent get _value => super._value as _$_NakeCallEvent;

  @override
  $Res call({
    Object? phoneNumber = freezed,
  }) {
    return _then(_$_NakeCallEvent(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NakeCallEvent extends _NakeCallEvent {
  const _$_NakeCallEvent({required this.phoneNumber}) : super._();

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'CallEvent.makeCall(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NakeCallEvent &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(phoneNumber));

  @JsonKey(ignore: true)
  @override
  _$$_NakeCallEventCopyWith<_$_NakeCallEvent> get copyWith =>
      __$$_NakeCallEventCopyWithImpl<_$_NakeCallEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) makeCall,
  }) {
    return makeCall(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber)? makeCall,
  }) {
    return makeCall?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? makeCall,
    required TResult orElse(),
  }) {
    if (makeCall != null) {
      return makeCall(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NakeCallEvent value) makeCall,
  }) {
    return makeCall(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NakeCallEvent value)? makeCall,
  }) {
    return makeCall?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NakeCallEvent value)? makeCall,
    required TResult orElse(),
  }) {
    if (makeCall != null) {
      return makeCall(this);
    }
    return orElse();
  }
}

abstract class _NakeCallEvent extends CallEvent {
  const factory _NakeCallEvent({required final String phoneNumber}) =
      _$_NakeCallEvent;
  const _NakeCallEvent._() : super._();

  @override
  String get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$_NakeCallEventCopyWith<_$_NakeCallEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CallState {
  BlocStatus get status => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CallStateCopyWith<CallState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CallStateCopyWith<$Res> {
  factory $CallStateCopyWith(CallState value, $Res Function(CallState) then) =
      _$CallStateCopyWithImpl<$Res>;
  $Res call({BlocStatus status, Object? error});
}

/// @nodoc
class _$CallStateCopyWithImpl<$Res> implements $CallStateCopyWith<$Res> {
  _$CallStateCopyWithImpl(this._value, this._then);

  final CallState _value;
  // ignore: unused_field
  final $Res Function(CallState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      error: error == freezed ? _value.error : error,
    ));
  }
}

/// @nodoc
abstract class _$$_CallStateCopyWith<$Res> implements $CallStateCopyWith<$Res> {
  factory _$$_CallStateCopyWith(
          _$_CallState value, $Res Function(_$_CallState) then) =
      __$$_CallStateCopyWithImpl<$Res>;
  @override
  $Res call({BlocStatus status, Object? error});
}

/// @nodoc
class __$$_CallStateCopyWithImpl<$Res> extends _$CallStateCopyWithImpl<$Res>
    implements _$$_CallStateCopyWith<$Res> {
  __$$_CallStateCopyWithImpl(
      _$_CallState _value, $Res Function(_$_CallState) _then)
      : super(_value, (v) => _then(v as _$_CallState));

  @override
  _$_CallState get _value => super._value as _$_CallState;

  @override
  $Res call({
    Object? status = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_CallState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      error: error == freezed ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$_CallState implements _CallState {
  const _$_CallState({required this.status, this.error});

  @override
  final BlocStatus status;
  @override
  final Object? error;

  @override
  String toString() {
    return 'CallState(status: $status, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CallState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_CallStateCopyWith<_$_CallState> get copyWith =>
      __$$_CallStateCopyWithImpl<_$_CallState>(this, _$identity);
}

abstract class _CallState implements CallState {
  const factory _CallState(
      {required final BlocStatus status, final Object? error}) = _$_CallState;

  @override
  BlocStatus get status;
  @override
  Object? get error;
  @override
  @JsonKey(ignore: true)
  _$$_CallStateCopyWith<_$_CallState> get copyWith =>
      throw _privateConstructorUsedError;
}
