import 'dart:typed_data';
import 'dart:ui';

class Contact {
  Contact({
    required this.firstName,
    required this.secondName,
    required this.phoneNumber,
    required this.profileImage,
    required this.color,
  });

  final String firstName, secondName, phoneNumber;
  final Uint8List profileImage;
  final Color color;
}
