part of 'bloc.dart';

@immutable
@freezed
class CallEvent with _$CallEvent {
  const CallEvent._();

  const factory CallEvent.makeCall({required String phoneNumber}) =
      _NakeCallEvent;
}
