part of 'bloc.dart';

@immutable
@freezed
class ContactsState extends AppBlocState with _$ContactsState {
  const factory ContactsState({
    required BlocStatus status,
    required List<Contact> contacts,
    Object? error,
  }) = _ContactsState;
}
