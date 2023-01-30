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
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentUser,
    required TResult Function(String email, String password)
        signInWithEmailAndPassword,
    required TResult Function(String email, String password)
        signUpWithEmailAndPassword,
    required TResult Function(String email) requestPasswordReset,
    required TResult Function(String code, String newPassword)
        confirmPasswordReset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentUser,
    TResult? Function(String email, String password)?
        signInWithEmailAndPassword,
    TResult? Function(String email, String password)?
        signUpWithEmailAndPassword,
    TResult? Function(String email)? requestPasswordReset,
    TResult? Function(String code, String newPassword)? confirmPasswordReset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentUser,
    TResult Function(String email, String password)? signInWithEmailAndPassword,
    TResult Function(String email, String password)? signUpWithEmailAndPassword,
    TResult Function(String email)? requestPasswordReset,
    TResult Function(String code, String newPassword)? confirmPasswordReset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentUserEvent value) getCurrentUser,
    required TResult Function(_SignInWithEmailAndPasswordEvent value)
        signInWithEmailAndPassword,
    required TResult Function(_SignUpWithEmailAndPasswordEvent value)
        signUpWithEmailAndPassword,
    required TResult Function(_RequestPasswordResetEvent value)
        requestPasswordReset,
    required TResult Function(_ConfirmPasswordResetEvent value)
        confirmPasswordReset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrentUserEvent value)? getCurrentUser,
    TResult? Function(_SignInWithEmailAndPasswordEvent value)?
        signInWithEmailAndPassword,
    TResult? Function(_SignUpWithEmailAndPasswordEvent value)?
        signUpWithEmailAndPassword,
    TResult? Function(_RequestPasswordResetEvent value)? requestPasswordReset,
    TResult? Function(_ConfirmPasswordResetEvent value)? confirmPasswordReset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentUserEvent value)? getCurrentUser,
    TResult Function(_SignInWithEmailAndPasswordEvent value)?
        signInWithEmailAndPassword,
    TResult Function(_SignUpWithEmailAndPasswordEvent value)?
        signUpWithEmailAndPassword,
    TResult Function(_RequestPasswordResetEvent value)? requestPasswordReset,
    TResult Function(_ConfirmPasswordResetEvent value)? confirmPasswordReset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetCurrentUserEventCopyWith<$Res> {
  factory _$$_GetCurrentUserEventCopyWith(_$_GetCurrentUserEvent value,
          $Res Function(_$_GetCurrentUserEvent) then) =
      __$$_GetCurrentUserEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetCurrentUserEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_GetCurrentUserEvent>
    implements _$$_GetCurrentUserEventCopyWith<$Res> {
  __$$_GetCurrentUserEventCopyWithImpl(_$_GetCurrentUserEvent _value,
      $Res Function(_$_GetCurrentUserEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetCurrentUserEvent extends _GetCurrentUserEvent {
  const _$_GetCurrentUserEvent() : super._();

  @override
  String toString() {
    return 'AuthEvent.getCurrentUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetCurrentUserEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentUser,
    required TResult Function(String email, String password)
        signInWithEmailAndPassword,
    required TResult Function(String email, String password)
        signUpWithEmailAndPassword,
    required TResult Function(String email) requestPasswordReset,
    required TResult Function(String code, String newPassword)
        confirmPasswordReset,
  }) {
    return getCurrentUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentUser,
    TResult? Function(String email, String password)?
        signInWithEmailAndPassword,
    TResult? Function(String email, String password)?
        signUpWithEmailAndPassword,
    TResult? Function(String email)? requestPasswordReset,
    TResult? Function(String code, String newPassword)? confirmPasswordReset,
  }) {
    return getCurrentUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentUser,
    TResult Function(String email, String password)? signInWithEmailAndPassword,
    TResult Function(String email, String password)? signUpWithEmailAndPassword,
    TResult Function(String email)? requestPasswordReset,
    TResult Function(String code, String newPassword)? confirmPasswordReset,
    required TResult orElse(),
  }) {
    if (getCurrentUser != null) {
      return getCurrentUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentUserEvent value) getCurrentUser,
    required TResult Function(_SignInWithEmailAndPasswordEvent value)
        signInWithEmailAndPassword,
    required TResult Function(_SignUpWithEmailAndPasswordEvent value)
        signUpWithEmailAndPassword,
    required TResult Function(_RequestPasswordResetEvent value)
        requestPasswordReset,
    required TResult Function(_ConfirmPasswordResetEvent value)
        confirmPasswordReset,
  }) {
    return getCurrentUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrentUserEvent value)? getCurrentUser,
    TResult? Function(_SignInWithEmailAndPasswordEvent value)?
        signInWithEmailAndPassword,
    TResult? Function(_SignUpWithEmailAndPasswordEvent value)?
        signUpWithEmailAndPassword,
    TResult? Function(_RequestPasswordResetEvent value)? requestPasswordReset,
    TResult? Function(_ConfirmPasswordResetEvent value)? confirmPasswordReset,
  }) {
    return getCurrentUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentUserEvent value)? getCurrentUser,
    TResult Function(_SignInWithEmailAndPasswordEvent value)?
        signInWithEmailAndPassword,
    TResult Function(_SignUpWithEmailAndPasswordEvent value)?
        signUpWithEmailAndPassword,
    TResult Function(_RequestPasswordResetEvent value)? requestPasswordReset,
    TResult Function(_ConfirmPasswordResetEvent value)? confirmPasswordReset,
    required TResult orElse(),
  }) {
    if (getCurrentUser != null) {
      return getCurrentUser(this);
    }
    return orElse();
  }
}

abstract class _GetCurrentUserEvent extends AuthEvent {
  const factory _GetCurrentUserEvent() = _$_GetCurrentUserEvent;
  const _GetCurrentUserEvent._() : super._();
}

/// @nodoc
abstract class _$$_SignInWithEmailAndPasswordEventCopyWith<$Res> {
  factory _$$_SignInWithEmailAndPasswordEventCopyWith(
          _$_SignInWithEmailAndPasswordEvent value,
          $Res Function(_$_SignInWithEmailAndPasswordEvent) then) =
      __$$_SignInWithEmailAndPasswordEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$_SignInWithEmailAndPasswordEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_SignInWithEmailAndPasswordEvent>
    implements _$$_SignInWithEmailAndPasswordEventCopyWith<$Res> {
  __$$_SignInWithEmailAndPasswordEventCopyWithImpl(
      _$_SignInWithEmailAndPasswordEvent _value,
      $Res Function(_$_SignInWithEmailAndPasswordEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_SignInWithEmailAndPasswordEvent(
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

class _$_SignInWithEmailAndPasswordEvent
    extends _SignInWithEmailAndPasswordEvent {
  const _$_SignInWithEmailAndPasswordEvent(
      {required this.email, required this.password})
      : super._();

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.signInWithEmailAndPassword(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInWithEmailAndPasswordEvent &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignInWithEmailAndPasswordEventCopyWith<
          _$_SignInWithEmailAndPasswordEvent>
      get copyWith => __$$_SignInWithEmailAndPasswordEventCopyWithImpl<
          _$_SignInWithEmailAndPasswordEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentUser,
    required TResult Function(String email, String password)
        signInWithEmailAndPassword,
    required TResult Function(String email, String password)
        signUpWithEmailAndPassword,
    required TResult Function(String email) requestPasswordReset,
    required TResult Function(String code, String newPassword)
        confirmPasswordReset,
  }) {
    return signInWithEmailAndPassword(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentUser,
    TResult? Function(String email, String password)?
        signInWithEmailAndPassword,
    TResult? Function(String email, String password)?
        signUpWithEmailAndPassword,
    TResult? Function(String email)? requestPasswordReset,
    TResult? Function(String code, String newPassword)? confirmPasswordReset,
  }) {
    return signInWithEmailAndPassword?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentUser,
    TResult Function(String email, String password)? signInWithEmailAndPassword,
    TResult Function(String email, String password)? signUpWithEmailAndPassword,
    TResult Function(String email)? requestPasswordReset,
    TResult Function(String code, String newPassword)? confirmPasswordReset,
    required TResult orElse(),
  }) {
    if (signInWithEmailAndPassword != null) {
      return signInWithEmailAndPassword(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentUserEvent value) getCurrentUser,
    required TResult Function(_SignInWithEmailAndPasswordEvent value)
        signInWithEmailAndPassword,
    required TResult Function(_SignUpWithEmailAndPasswordEvent value)
        signUpWithEmailAndPassword,
    required TResult Function(_RequestPasswordResetEvent value)
        requestPasswordReset,
    required TResult Function(_ConfirmPasswordResetEvent value)
        confirmPasswordReset,
  }) {
    return signInWithEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrentUserEvent value)? getCurrentUser,
    TResult? Function(_SignInWithEmailAndPasswordEvent value)?
        signInWithEmailAndPassword,
    TResult? Function(_SignUpWithEmailAndPasswordEvent value)?
        signUpWithEmailAndPassword,
    TResult? Function(_RequestPasswordResetEvent value)? requestPasswordReset,
    TResult? Function(_ConfirmPasswordResetEvent value)? confirmPasswordReset,
  }) {
    return signInWithEmailAndPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentUserEvent value)? getCurrentUser,
    TResult Function(_SignInWithEmailAndPasswordEvent value)?
        signInWithEmailAndPassword,
    TResult Function(_SignUpWithEmailAndPasswordEvent value)?
        signUpWithEmailAndPassword,
    TResult Function(_RequestPasswordResetEvent value)? requestPasswordReset,
    TResult Function(_ConfirmPasswordResetEvent value)? confirmPasswordReset,
    required TResult orElse(),
  }) {
    if (signInWithEmailAndPassword != null) {
      return signInWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class _SignInWithEmailAndPasswordEvent extends AuthEvent {
  const factory _SignInWithEmailAndPasswordEvent(
      {required final String email,
      required final String password}) = _$_SignInWithEmailAndPasswordEvent;
  const _SignInWithEmailAndPasswordEvent._() : super._();

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$_SignInWithEmailAndPasswordEventCopyWith<
          _$_SignInWithEmailAndPasswordEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SignUpWithEmailAndPasswordEventCopyWith<$Res> {
  factory _$$_SignUpWithEmailAndPasswordEventCopyWith(
          _$_SignUpWithEmailAndPasswordEvent value,
          $Res Function(_$_SignUpWithEmailAndPasswordEvent) then) =
      __$$_SignUpWithEmailAndPasswordEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$_SignUpWithEmailAndPasswordEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_SignUpWithEmailAndPasswordEvent>
    implements _$$_SignUpWithEmailAndPasswordEventCopyWith<$Res> {
  __$$_SignUpWithEmailAndPasswordEventCopyWithImpl(
      _$_SignUpWithEmailAndPasswordEvent _value,
      $Res Function(_$_SignUpWithEmailAndPasswordEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_SignUpWithEmailAndPasswordEvent(
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

class _$_SignUpWithEmailAndPasswordEvent
    extends _SignUpWithEmailAndPasswordEvent {
  const _$_SignUpWithEmailAndPasswordEvent(
      {required this.email, required this.password})
      : super._();

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.signUpWithEmailAndPassword(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignUpWithEmailAndPasswordEvent &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignUpWithEmailAndPasswordEventCopyWith<
          _$_SignUpWithEmailAndPasswordEvent>
      get copyWith => __$$_SignUpWithEmailAndPasswordEventCopyWithImpl<
          _$_SignUpWithEmailAndPasswordEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentUser,
    required TResult Function(String email, String password)
        signInWithEmailAndPassword,
    required TResult Function(String email, String password)
        signUpWithEmailAndPassword,
    required TResult Function(String email) requestPasswordReset,
    required TResult Function(String code, String newPassword)
        confirmPasswordReset,
  }) {
    return signUpWithEmailAndPassword(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentUser,
    TResult? Function(String email, String password)?
        signInWithEmailAndPassword,
    TResult? Function(String email, String password)?
        signUpWithEmailAndPassword,
    TResult? Function(String email)? requestPasswordReset,
    TResult? Function(String code, String newPassword)? confirmPasswordReset,
  }) {
    return signUpWithEmailAndPassword?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentUser,
    TResult Function(String email, String password)? signInWithEmailAndPassword,
    TResult Function(String email, String password)? signUpWithEmailAndPassword,
    TResult Function(String email)? requestPasswordReset,
    TResult Function(String code, String newPassword)? confirmPasswordReset,
    required TResult orElse(),
  }) {
    if (signUpWithEmailAndPassword != null) {
      return signUpWithEmailAndPassword(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentUserEvent value) getCurrentUser,
    required TResult Function(_SignInWithEmailAndPasswordEvent value)
        signInWithEmailAndPassword,
    required TResult Function(_SignUpWithEmailAndPasswordEvent value)
        signUpWithEmailAndPassword,
    required TResult Function(_RequestPasswordResetEvent value)
        requestPasswordReset,
    required TResult Function(_ConfirmPasswordResetEvent value)
        confirmPasswordReset,
  }) {
    return signUpWithEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrentUserEvent value)? getCurrentUser,
    TResult? Function(_SignInWithEmailAndPasswordEvent value)?
        signInWithEmailAndPassword,
    TResult? Function(_SignUpWithEmailAndPasswordEvent value)?
        signUpWithEmailAndPassword,
    TResult? Function(_RequestPasswordResetEvent value)? requestPasswordReset,
    TResult? Function(_ConfirmPasswordResetEvent value)? confirmPasswordReset,
  }) {
    return signUpWithEmailAndPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentUserEvent value)? getCurrentUser,
    TResult Function(_SignInWithEmailAndPasswordEvent value)?
        signInWithEmailAndPassword,
    TResult Function(_SignUpWithEmailAndPasswordEvent value)?
        signUpWithEmailAndPassword,
    TResult Function(_RequestPasswordResetEvent value)? requestPasswordReset,
    TResult Function(_ConfirmPasswordResetEvent value)? confirmPasswordReset,
    required TResult orElse(),
  }) {
    if (signUpWithEmailAndPassword != null) {
      return signUpWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class _SignUpWithEmailAndPasswordEvent extends AuthEvent {
  const factory _SignUpWithEmailAndPasswordEvent(
      {required final String email,
      required final String password}) = _$_SignUpWithEmailAndPasswordEvent;
  const _SignUpWithEmailAndPasswordEvent._() : super._();

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$_SignUpWithEmailAndPasswordEventCopyWith<
          _$_SignUpWithEmailAndPasswordEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RequestPasswordResetEventCopyWith<$Res> {
  factory _$$_RequestPasswordResetEventCopyWith(
          _$_RequestPasswordResetEvent value,
          $Res Function(_$_RequestPasswordResetEvent) then) =
      __$$_RequestPasswordResetEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$_RequestPasswordResetEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_RequestPasswordResetEvent>
    implements _$$_RequestPasswordResetEventCopyWith<$Res> {
  __$$_RequestPasswordResetEventCopyWithImpl(
      _$_RequestPasswordResetEvent _value,
      $Res Function(_$_RequestPasswordResetEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$_RequestPasswordResetEvent(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RequestPasswordResetEvent extends _RequestPasswordResetEvent {
  const _$_RequestPasswordResetEvent({required this.email}) : super._();

  @override
  final String email;

  @override
  String toString() {
    return 'AuthEvent.requestPasswordReset(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RequestPasswordResetEvent &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RequestPasswordResetEventCopyWith<_$_RequestPasswordResetEvent>
      get copyWith => __$$_RequestPasswordResetEventCopyWithImpl<
          _$_RequestPasswordResetEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentUser,
    required TResult Function(String email, String password)
        signInWithEmailAndPassword,
    required TResult Function(String email, String password)
        signUpWithEmailAndPassword,
    required TResult Function(String email) requestPasswordReset,
    required TResult Function(String code, String newPassword)
        confirmPasswordReset,
  }) {
    return requestPasswordReset(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentUser,
    TResult? Function(String email, String password)?
        signInWithEmailAndPassword,
    TResult? Function(String email, String password)?
        signUpWithEmailAndPassword,
    TResult? Function(String email)? requestPasswordReset,
    TResult? Function(String code, String newPassword)? confirmPasswordReset,
  }) {
    return requestPasswordReset?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentUser,
    TResult Function(String email, String password)? signInWithEmailAndPassword,
    TResult Function(String email, String password)? signUpWithEmailAndPassword,
    TResult Function(String email)? requestPasswordReset,
    TResult Function(String code, String newPassword)? confirmPasswordReset,
    required TResult orElse(),
  }) {
    if (requestPasswordReset != null) {
      return requestPasswordReset(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentUserEvent value) getCurrentUser,
    required TResult Function(_SignInWithEmailAndPasswordEvent value)
        signInWithEmailAndPassword,
    required TResult Function(_SignUpWithEmailAndPasswordEvent value)
        signUpWithEmailAndPassword,
    required TResult Function(_RequestPasswordResetEvent value)
        requestPasswordReset,
    required TResult Function(_ConfirmPasswordResetEvent value)
        confirmPasswordReset,
  }) {
    return requestPasswordReset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrentUserEvent value)? getCurrentUser,
    TResult? Function(_SignInWithEmailAndPasswordEvent value)?
        signInWithEmailAndPassword,
    TResult? Function(_SignUpWithEmailAndPasswordEvent value)?
        signUpWithEmailAndPassword,
    TResult? Function(_RequestPasswordResetEvent value)? requestPasswordReset,
    TResult? Function(_ConfirmPasswordResetEvent value)? confirmPasswordReset,
  }) {
    return requestPasswordReset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentUserEvent value)? getCurrentUser,
    TResult Function(_SignInWithEmailAndPasswordEvent value)?
        signInWithEmailAndPassword,
    TResult Function(_SignUpWithEmailAndPasswordEvent value)?
        signUpWithEmailAndPassword,
    TResult Function(_RequestPasswordResetEvent value)? requestPasswordReset,
    TResult Function(_ConfirmPasswordResetEvent value)? confirmPasswordReset,
    required TResult orElse(),
  }) {
    if (requestPasswordReset != null) {
      return requestPasswordReset(this);
    }
    return orElse();
  }
}

abstract class _RequestPasswordResetEvent extends AuthEvent {
  const factory _RequestPasswordResetEvent({required final String email}) =
      _$_RequestPasswordResetEvent;
  const _RequestPasswordResetEvent._() : super._();

  String get email;
  @JsonKey(ignore: true)
  _$$_RequestPasswordResetEventCopyWith<_$_RequestPasswordResetEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ConfirmPasswordResetEventCopyWith<$Res> {
  factory _$$_ConfirmPasswordResetEventCopyWith(
          _$_ConfirmPasswordResetEvent value,
          $Res Function(_$_ConfirmPasswordResetEvent) then) =
      __$$_ConfirmPasswordResetEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String code, String newPassword});
}

/// @nodoc
class __$$_ConfirmPasswordResetEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_ConfirmPasswordResetEvent>
    implements _$$_ConfirmPasswordResetEventCopyWith<$Res> {
  __$$_ConfirmPasswordResetEventCopyWithImpl(
      _$_ConfirmPasswordResetEvent _value,
      $Res Function(_$_ConfirmPasswordResetEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? newPassword = null,
  }) {
    return _then(_$_ConfirmPasswordResetEvent(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ConfirmPasswordResetEvent extends _ConfirmPasswordResetEvent {
  const _$_ConfirmPasswordResetEvent(
      {required this.code, required this.newPassword})
      : super._();

  @override
  final String code;
  @override
  final String newPassword;

  @override
  String toString() {
    return 'AuthEvent.confirmPasswordReset(code: $code, newPassword: $newPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConfirmPasswordResetEvent &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, newPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConfirmPasswordResetEventCopyWith<_$_ConfirmPasswordResetEvent>
      get copyWith => __$$_ConfirmPasswordResetEventCopyWithImpl<
          _$_ConfirmPasswordResetEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentUser,
    required TResult Function(String email, String password)
        signInWithEmailAndPassword,
    required TResult Function(String email, String password)
        signUpWithEmailAndPassword,
    required TResult Function(String email) requestPasswordReset,
    required TResult Function(String code, String newPassword)
        confirmPasswordReset,
  }) {
    return confirmPasswordReset(code, newPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentUser,
    TResult? Function(String email, String password)?
        signInWithEmailAndPassword,
    TResult? Function(String email, String password)?
        signUpWithEmailAndPassword,
    TResult? Function(String email)? requestPasswordReset,
    TResult? Function(String code, String newPassword)? confirmPasswordReset,
  }) {
    return confirmPasswordReset?.call(code, newPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentUser,
    TResult Function(String email, String password)? signInWithEmailAndPassword,
    TResult Function(String email, String password)? signUpWithEmailAndPassword,
    TResult Function(String email)? requestPasswordReset,
    TResult Function(String code, String newPassword)? confirmPasswordReset,
    required TResult orElse(),
  }) {
    if (confirmPasswordReset != null) {
      return confirmPasswordReset(code, newPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentUserEvent value) getCurrentUser,
    required TResult Function(_SignInWithEmailAndPasswordEvent value)
        signInWithEmailAndPassword,
    required TResult Function(_SignUpWithEmailAndPasswordEvent value)
        signUpWithEmailAndPassword,
    required TResult Function(_RequestPasswordResetEvent value)
        requestPasswordReset,
    required TResult Function(_ConfirmPasswordResetEvent value)
        confirmPasswordReset,
  }) {
    return confirmPasswordReset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrentUserEvent value)? getCurrentUser,
    TResult? Function(_SignInWithEmailAndPasswordEvent value)?
        signInWithEmailAndPassword,
    TResult? Function(_SignUpWithEmailAndPasswordEvent value)?
        signUpWithEmailAndPassword,
    TResult? Function(_RequestPasswordResetEvent value)? requestPasswordReset,
    TResult? Function(_ConfirmPasswordResetEvent value)? confirmPasswordReset,
  }) {
    return confirmPasswordReset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentUserEvent value)? getCurrentUser,
    TResult Function(_SignInWithEmailAndPasswordEvent value)?
        signInWithEmailAndPassword,
    TResult Function(_SignUpWithEmailAndPasswordEvent value)?
        signUpWithEmailAndPassword,
    TResult Function(_RequestPasswordResetEvent value)? requestPasswordReset,
    TResult Function(_ConfirmPasswordResetEvent value)? confirmPasswordReset,
    required TResult orElse(),
  }) {
    if (confirmPasswordReset != null) {
      return confirmPasswordReset(this);
    }
    return orElse();
  }
}

abstract class _ConfirmPasswordResetEvent extends AuthEvent {
  const factory _ConfirmPasswordResetEvent(
      {required final String code,
      required final String newPassword}) = _$_ConfirmPasswordResetEvent;
  const _ConfirmPasswordResetEvent._() : super._();

  String get code;
  String get newPassword;
  @JsonKey(ignore: true)
  _$$_ConfirmPasswordResetEventCopyWith<_$_ConfirmPasswordResetEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  BlocStatus get status => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call({BlocStatus status, User? user, Object? error});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? user = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      error: freezed == error ? _value.error : error,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$_AuthStateCopyWith(
          _$_AuthState value, $Res Function(_$_AuthState) then) =
      __$$_AuthStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BlocStatus status, User? user, Object? error});
}

/// @nodoc
class __$$_AuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthState>
    implements _$$_AuthStateCopyWith<$Res> {
  __$$_AuthStateCopyWithImpl(
      _$_AuthState _value, $Res Function(_$_AuthState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? user = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_AuthState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$_AuthState implements _AuthState {
  const _$_AuthState({required this.status, this.user, this.error});

  @override
  final BlocStatus status;
  @override
  final User? user;
  @override
  final Object? error;

  @override
  String toString() {
    return 'AuthState(status: $status, user: $user, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, user, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      __$$_AuthStateCopyWithImpl<_$_AuthState>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {required final BlocStatus status,
      final User? user,
      final Object? error}) = _$_AuthState;

  @override
  BlocStatus get status;
  @override
  User? get user;
  @override
  Object? get error;
  @override
  @JsonKey(ignore: true)
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
