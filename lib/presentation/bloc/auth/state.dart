part of 'bloc.dart';

@immutable
@freezed
class AuthState extends AppBlocState with _$AuthState {
  const factory AuthState({
    required BlocStatus status,
    User? user,
    Object? error,
  }) = _AuthState;
}
