part of 'bloc.dart';

@immutable
@freezed
class CallState extends AppBlocState with _$CallState{
  const factory CallState({
    required BlocStatus status,
    Object? error,
  }) = _CallState;
}
