import 'dart:ui';

import 'package:neumorphic_phone_dialer/assembly/factory.dart';
import 'package:neumorphic_phone_dialer/data/model/contact.dart';
import 'package:neumorphic_phone_dialer/domain/entity/contact.dart';

class ContactFromDtoFactory implements Factory<Contact, ContactDto> {
  @override
  Future<Contact> create(ContactDto argument) async {
    return Contact(
      firstName: argument.firstName,
      secondName:  argument.secondName,
      phoneNumber:  argument.phoneNumber,
      profileImage: null,
      color: Color(argument.color),
    );
  }
}
