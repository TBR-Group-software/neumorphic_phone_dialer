import 'package:neumorphic_phone_dialer/domain/entity/user.dart';
import 'package:neumorphic_phone_dialer/domain/service/auth.dart';

abstract class SignUpWithEmailAndPasswordUseCase {
  Future<User> call({
    required String email,
    required String password,
  });
}

class ServiceSignUpWithEmailAndPasswordUseCase
    implements SignUpWithEmailAndPasswordUseCase {
  ServiceSignUpWithEmailAndPasswordUseCase(this._service);

  final AuthService _service;

  @override
  Future<User> call({
    required String email,
    required String password,
  }) async =>
      _service.signUpWithEmailAndPassword(
        email: email,
        password: password,
      );
}
