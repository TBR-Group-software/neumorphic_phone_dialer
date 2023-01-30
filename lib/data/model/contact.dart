import 'dart:typed_data';

class ContactDto {
  ContactDto({
    required this.firstName,
    required this.secondName,
    required this.phoneNumber,
    required this.profileImage,
    required this.color,
  });

  final String firstName, secondName, phoneNumber;
  final Uint8List? profileImage;
  final int color;
}
