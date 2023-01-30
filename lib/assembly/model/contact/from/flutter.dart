import 'package:contacts_service/contacts_service.dart';
import 'package:neumorphic_phone_dialer/assembly/factory.dart';
import 'package:neumorphic_phone_dialer/data/model/contact.dart';
import 'package:string_to_hex/string_to_hex.dart';

class ContactDtoFromFlutterFactory implements Factory<ContactDto, Contact> {
  @override
  Future<ContactDto> create(Contact argument) async {
    late final int color;

    try {
      color = argument.displayName != null
          ? StringToHex.toColor(argument.displayName!)
          : 0xFF000000;
    } on Object {
      color = 0xFF000000;
    }

    return ContactDto(
      firstName: argument.givenName ?? '',
      secondName: argument.familyName ?? '',
      phoneNumber: (argument.phones?.isNotEmpty ?? false)
          ? argument.phones?.first.value ?? ''
          : '',
      profileImage: null,
      color: color,
    );
  }
}
