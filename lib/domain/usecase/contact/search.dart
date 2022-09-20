import 'package:neumorphic_phone_dialer/domain/entity/contact.dart';
import 'package:neumorphic_phone_dialer/domain/service/contact.dart';

abstract class SearchContactsUseCase {
  Future<List<Contact>> call({required String phoneNumber});
}

class ServiceSearchContactsUseCase implements SearchContactsUseCase {
  final ContactService _service;

  ServiceSearchContactsUseCase(this._service);

  @override
  Future<List<Contact>> call({required String phoneNumber}) =>
      _service.searchContacts(phoneNumber: phoneNumber);
}
