import 'package:neumorphic_phone_dialer/domain/entity/contact.dart';
import 'package:neumorphic_phone_dialer/domain/service/contact.dart';

abstract class LoadContactsUseCase {
  Future<List<Contact>> call();
}

class ServiceLoadContactsUseCase implements LoadContactsUseCase {
  final ContactService _service;

  ServiceLoadContactsUseCase(this._service);

  @override
  Future<List<Contact>> call() => _service.loadContacts();
}
