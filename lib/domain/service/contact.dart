import 'package:neumorphic_phone_dialer/domain/entity/contact.dart';

abstract class ContactService {
  Future<List<Contact>> loadContacts();

  Future<List<Contact>> searchContacts({required String phoneNumber});
}
