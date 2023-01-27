import 'package:firebase_auth/firebase_auth.dart';
import 'package:neumorphic_phone_dialer/assembly/factory.dart';
import 'package:neumorphic_phone_dialer/data/model/user.dart';

class UserDtoFromFirebaseUserFactory implements Factory<UserDto, User> {
  @override
  Future<UserDto> create(User argument) async {
    return UserDto(id: argument.uid);
  }
}
