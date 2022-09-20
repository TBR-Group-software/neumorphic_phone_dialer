part of 'bloc.dart';

@immutable
@freezed
class ContactsEvent with _$ContactsEvent {
  const factory ContactsEvent.loadContacts() = _LoadContactsEvent;
}
