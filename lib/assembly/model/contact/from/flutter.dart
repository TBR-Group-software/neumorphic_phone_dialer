import 'package:contacts_service/contacts_service.dart';
import 'package:neumorphic_phone_dialer/assembly/factory.dart';
import 'package:neumorphic_phone_dialer/data/model/contact.dart';
import 'package:string_to_hex/string_to_hex.dart';

class ContactDtoFromFlutterFactory implements Factory<ContactDto, Contact> {
  @override
  Future<ContactDto> create(Contact argument) async {
    return ContactDto(
      firstName: argument.givenName ?? '',
      secondName: argument.familyName ?? '',
      phoneNumber: argument.phones?.first.value ?? '',
      profileImage: null,
      color: StringToHex.toColor(argument.displayName ?? ''),
    );
  }
}
