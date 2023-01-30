import 'package:neumorphic_phone_dialer/assembly/factory.dart';
import 'package:neumorphic_phone_dialer/data/model/user.dart';
import 'package:neumorphic_phone_dialer/domain/entity/user.dart';

class UserFromDtoFactory implements Factory<User, UserDto> {
  @override
  Future<User> create(UserDto argument) async {
    return User(id: argument.id);
  }
}
