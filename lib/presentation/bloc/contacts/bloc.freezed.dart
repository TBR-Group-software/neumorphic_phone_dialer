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
mixin _$ContactsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadContacts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadContacts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadContacts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadContactsEvent value) loadContacts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadContactsEvent value)? loadContacts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadContactsEvent value)? loadContacts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactsEventCopyWith<$Res> {
  factory $ContactsEventCopyWith(
          ContactsEvent value, $Res Function(ContactsEvent) then) =
      _$ContactsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ContactsEventCopyWithImpl<$Res>
    implements $ContactsEventCopyWith<$Res> {
  _$ContactsEventCopyWithImpl(this._value, this._then);

  final ContactsEvent _value;
  // ignore: unused_field
  final $Res Function(ContactsEvent) _then;
}

/// @nodoc
abstract class _$$_LoadContactsEventCopyWith<$Res> {
  factory _$$_LoadContactsEventCopyWith(_$_LoadContactsEvent value,
          $Res Function(_$_LoadContactsEvent) then) =
      __$$_LoadContactsEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadContactsEventCopyWithImpl<$Res>
    extends _$ContactsEventCopyWithImpl<$Res>
    implements _$$_LoadContactsEventCopyWith<$Res> {
  __$$_LoadContactsEventCopyWithImpl(
      _$_LoadContactsEvent _value, $Res Function(_$_LoadContactsEvent) _then)
      : super(_value, (v) => _then(v as _$_LoadContactsEvent));

  @override
  _$_LoadContactsEvent get _value => super._value as _$_LoadContactsEvent;
}

/// @nodoc

class _$_LoadContactsEvent implements _LoadContactsEvent {
  const _$_LoadContactsEvent();

  @override
  String toString() {
    return 'ContactsEvent.loadContacts()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadContactsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadContacts,
  }) {
    return loadContacts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadContacts,
  }) {
    return loadContacts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadContacts,
    required TResult orElse(),
  }) {
    if (loadContacts != null) {
      return loadContacts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadContactsEvent value) loadContacts,
  }) {
    return loadContacts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadContactsEvent value)? loadContacts,
  }) {
    return loadContacts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadContactsEvent value)? loadContacts,
    required TResult orElse(),
  }) {
    if (loadContacts != null) {
      return loadContacts(this);
    }
    return orElse();
  }
}

abstract class _LoadContactsEvent implements ContactsEvent {
  const factory _LoadContactsEvent() = _$_LoadContactsEvent;
}

/// @nodoc
mixin _$ContactsState {
  BlocStatus get status => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContactsStateCopyWith<ContactsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactsStateCopyWith<$Res> {
  factory $ContactsStateCopyWith(
          ContactsState value, $Res Function(ContactsState) then) =
      _$ContactsStateCopyWithImpl<$Res>;
  $Res call({BlocStatus status, Object? error});
}

/// @nodoc
class _$ContactsStateCopyWithImpl<$Res>
    implements $ContactsStateCopyWith<$Res> {
  _$ContactsStateCopyWithImpl(this._value, this._then);

  final ContactsState _value;
  // ignore: unused_field
  final $Res Function(ContactsState) _then;

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
abstract class _$$_ContactsStateCopyWith<$Res>
    implements $ContactsStateCopyWith<$Res> {
  factory _$$_ContactsStateCopyWith(
          _$_ContactsState value, $Res Function(_$_ContactsState) then) =
      __$$_ContactsStateCopyWithImpl<$Res>;
  @override
  $Res call({BlocStatus status, Object? error});
}

/// @nodoc
class __$$_ContactsStateCopyWithImpl<$Res>
    extends _$ContactsStateCopyWithImpl<$Res>
    implements _$$_ContactsStateCopyWith<$Res> {
  __$$_ContactsStateCopyWithImpl(
      _$_ContactsState _value, $Res Function(_$_ContactsState) _then)
      : super(_value, (v) => _then(v as _$_ContactsState));

  @override
  _$_ContactsState get _value => super._value as _$_ContactsState;

  @override
  $Res call({
    Object? status = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_ContactsState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      error: error == freezed ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$_ContactsState implements _ContactsState {
  const _$_ContactsState({required this.status, this.error});

  @override
  final BlocStatus status;
  @override
  final Object? error;

  @override
  String toString() {
    return 'ContactsState(status: $status, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContactsState &&
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
  _$$_ContactsStateCopyWith<_$_ContactsState> get copyWith =>
      __$$_ContactsStateCopyWithImpl<_$_ContactsState>(this, _$identity);
}

abstract class _ContactsState implements ContactsState {
  const factory _ContactsState(
      {required final BlocStatus status,
      final Object? error}) = _$_ContactsState;

  @override
  BlocStatus get status;
  @override
  Object? get error;
  @override
  @JsonKey(ignore: true)
  _$$_ContactsStateCopyWith<_$_ContactsState> get copyWith =>
      throw _privateConstructorUsedError;
}
