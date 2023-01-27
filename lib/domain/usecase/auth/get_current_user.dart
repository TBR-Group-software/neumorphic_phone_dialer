import 'package:neumorphic_phone_dialer/domain/entity/user.dart';
import 'package:neumorphic_phone_dialer/domain/service/auth.dart';

abstract class GetCurrentUserUseCase {
  Future<User> call();
}

class ServiceGetCurrentUserUseCase implements GetCurrentUserUseCase {
  ServiceGetCurrentUserUseCase(this._service);

  final AuthService _service;

  @override
  Future<User> call() async => _service.getCurrentUser();
}
