import 'package:neumorphic_phone_dialer/assembly/factory.dart';
import 'package:neumorphic_phone_dialer/data/gateway/contact/flutter.dart';
import 'package:neumorphic_phone_dialer/data/model/contact.dart';
import 'package:neumorphic_phone_dialer/domain/entity/contact.dart';
import 'package:neumorphic_phone_dialer/domain/service/contact.dart';

class ContactServiceImpl implements ContactService {
  ContactServiceImpl(
    this._modelFactory,
    this._contactGateWay,
  );

  final Factory<Contact, ContactDto> _modelFactory;
  final FlutterContactGateWay _contactGateWay;

  @override
  Future<List<Contact>> loadContacts() async {
    final List<ContactDto> dtos = await _contactGateWay.loadContacts();

    return Future.wait(
      dtos.map(
        (ContactDto dto) => _modelFactory.create(dto),
      ),
    );
  }

  @override
  Future<List<Contact>> searchContacts({required String phoneNumber}) async {
    final List<ContactDto> dtos =
        await _contactGateWay.searchContacts(phoneNumber: phoneNumber);

    return Future.wait(
      dtos.map(
        (ContactDto dto) => _modelFactory.create(dto),
      ),
    );
  }
}
