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
    required TResult Function(String query) queryContacts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadContacts,
    TResult? Function(String query)? queryContacts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadContacts,
    TResult Function(String query)? queryContacts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadContactsEvent value) loadContacts,
    required TResult Function(_QueryContactsEvent value) queryContacts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadContactsEvent value)? loadContacts,
    TResult? Function(_QueryContactsEvent value)? queryContacts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadContactsEvent value)? loadContacts,
    TResult Function(_QueryContactsEvent value)? queryContacts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactsEventCopyWith<$Res> {
  factory $ContactsEventCopyWith(
          ContactsEvent value, $Res Function(ContactsEvent) then) =
      _$ContactsEventCopyWithImpl<$Res, ContactsEvent>;
}

/// @nodoc
class _$ContactsEventCopyWithImpl<$Res, $Val extends ContactsEvent>
    implements $ContactsEventCopyWith<$Res> {
  _$ContactsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadContactsEventCopyWith<$Res> {
  factory _$$_LoadContactsEventCopyWith(_$_LoadContactsEvent value,
          $Res Function(_$_LoadContactsEvent) then) =
      __$$_LoadContactsEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadContactsEventCopyWithImpl<$Res>
    extends _$ContactsEventCopyWithImpl<$Res, _$_LoadContactsEvent>
    implements _$$_LoadContactsEventCopyWith<$Res> {
  __$$_LoadContactsEventCopyWithImpl(
      _$_LoadContactsEvent _value, $Res Function(_$_LoadContactsEvent) _then)
      : super(_value, _then);
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
    required TResult Function(String query) queryContacts,
  }) {
    return loadContacts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadContacts,
    TResult? Function(String query)? queryContacts,
  }) {
    return loadContacts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadContacts,
    TResult Function(String query)? queryContacts,
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
    required TResult Function(_QueryContactsEvent value) queryContacts,
  }) {
    return loadContacts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadContactsEvent value)? loadContacts,
    TResult? Function(_QueryContactsEvent value)? queryContacts,
  }) {
    return loadContacts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadContactsEvent value)? loadContacts,
    TResult Function(_QueryContactsEvent value)? queryContacts,
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
abstract class _$$_QueryContactsEventCopyWith<$Res> {
  factory _$$_QueryContactsEventCopyWith(_$_QueryContactsEvent value,
          $Res Function(_$_QueryContactsEvent) then) =
      __$$_QueryContactsEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$_QueryContactsEventCopyWithImpl<$Res>
    extends _$ContactsEventCopyWithImpl<$Res, _$_QueryContactsEvent>
    implements _$$_QueryContactsEventCopyWith<$Res> {
  __$$_QueryContactsEventCopyWithImpl(
      _$_QueryContactsEvent _value, $Res Function(_$_QueryContactsEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$_QueryContactsEvent(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_QueryContactsEvent implements _QueryContactsEvent {
  const _$_QueryContactsEvent({required this.query});

  @override
  final String query;

  @override
  String toString() {
    return 'ContactsEvent.queryContacts(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QueryContactsEvent &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QueryContactsEventCopyWith<_$_QueryContactsEvent> get copyWith =>
      __$$_QueryContactsEventCopyWithImpl<_$_QueryContactsEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadContacts,
    required TResult Function(String query) queryContacts,
  }) {
    return queryContacts(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadContacts,
    TResult? Function(String query)? queryContacts,
  }) {
    return queryContacts?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadContacts,
    TResult Function(String query)? queryContacts,
    required TResult orElse(),
  }) {
    if (queryContacts != null) {
      return queryContacts(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadContactsEvent value) loadContacts,
    required TResult Function(_QueryContactsEvent value) queryContacts,
  }) {
    return queryContacts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadContactsEvent value)? loadContacts,
    TResult? Function(_QueryContactsEvent value)? queryContacts,
  }) {
    return queryContacts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadContactsEvent value)? loadContacts,
    TResult Function(_QueryContactsEvent value)? queryContacts,
    required TResult orElse(),
  }) {
    if (queryContacts != null) {
      return queryContacts(this);
    }
    return orElse();
  }
}

abstract class _QueryContactsEvent implements ContactsEvent {
  const factory _QueryContactsEvent({required final String query}) =
      _$_QueryContactsEvent;

  String get query;
  @JsonKey(ignore: true)
  _$$_QueryContactsEventCopyWith<_$_QueryContactsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ContactsState {
  BlocStatus get status => throw _privateConstructorUsedError;
  List<Contact> get contacts => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContactsStateCopyWith<ContactsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactsStateCopyWith<$Res> {
  factory $ContactsStateCopyWith(
          ContactsState value, $Res Function(ContactsState) then) =
      _$ContactsStateCopyWithImpl<$Res, ContactsState>;
  @useResult
  $Res call({BlocStatus status, List<Contact> contacts, Object? error});
}

/// @nodoc
class _$ContactsStateCopyWithImpl<$Res, $Val extends ContactsState>
    implements $ContactsStateCopyWith<$Res> {
  _$ContactsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? contacts = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      contacts: null == contacts
          ? _value.contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<Contact>,
      error: freezed == error ? _value.error : error,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ContactsStateCopyWith<$Res>
    implements $ContactsStateCopyWith<$Res> {
  factory _$$_ContactsStateCopyWith(
          _$_ContactsState value, $Res Function(_$_ContactsState) then) =
      __$$_ContactsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BlocStatus status, List<Contact> contacts, Object? error});
}

/// @nodoc
class __$$_ContactsStateCopyWithImpl<$Res>
    extends _$ContactsStateCopyWithImpl<$Res, _$_ContactsState>
    implements _$$_ContactsStateCopyWith<$Res> {
  __$$_ContactsStateCopyWithImpl(
      _$_ContactsState _value, $Res Function(_$_ContactsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? contacts = null,
    Object? error = freezed,
  }) {
    return _then(_$_ContactsState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      contacts: null == contacts
          ? _value._contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<Contact>,
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$_ContactsState implements _ContactsState {
  const _$_ContactsState(
      {required this.status, required final List<Contact> contacts, this.error})
      : _contacts = contacts;

  @override
  final BlocStatus status;
  final List<Contact> _contacts;
  @override
  List<Contact> get contacts {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contacts);
  }

  @override
  final Object? error;

  @override
  String toString() {
    return 'ContactsState(status: $status, contacts: $contacts, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContactsState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._contacts, _contacts) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_contacts),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContactsStateCopyWith<_$_ContactsState> get copyWith =>
      __$$_ContactsStateCopyWithImpl<_$_ContactsState>(this, _$identity);
}

abstract class _ContactsState implements ContactsState {
  const factory _ContactsState(
      {required final BlocStatus status,
      required final List<Contact> contacts,
      final Object? error}) = _$_ContactsState;

  @override
  BlocStatus get status;
  @override
  List<Contact> get contacts;
  @override
  Object? get error;
  @override
  @JsonKey(ignore: true)
  _$$_ContactsStateCopyWith<_$_ContactsState> get copyWith =>
      throw _privateConstructorUsedError;
}
