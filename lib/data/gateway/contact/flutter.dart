import 'package:contacts_service/contacts_service.dart';
import 'package:neumorphic_phone_dialer/assembly/factory.dart';
import 'package:neumorphic_phone_dialer/data/model/contact.dart';
import 'package:permission_handler/permission_handler.dart';

class FlutterContactGateWay {
  FlutterContactGateWay(this._dtoFactory);

  final Factory<ContactDto, Contact> _dtoFactory;

  Future<List<ContactDto>> loadContacts() async {
    await Permission.contacts.request();

    final List<Contact> contacts = await ContactsService.getContacts();

    return Future.wait(
      contacts.map(
        (Contact contact) => _dtoFactory.create(
          contact,
        ),
      ),
    );
  }

  Future<List<ContactDto>> searchContacts({required String phoneNumber}) async {
    await Permission.contacts.request();

    final List<Contact> contacts =
        await ContactsService.getContacts(query: phoneNumber);

    return Future.wait(
      contacts.map(
        (Contact contact) => _dtoFactory.create(
          contact,
        ),
      ),
    );
  }
}
