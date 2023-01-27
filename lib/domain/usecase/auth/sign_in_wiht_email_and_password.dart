import 'package:neumorphic_phone_dialer/domain/entity/user.dart';
import 'package:neumorphic_phone_dialer/domain/service/auth.dart';

abstract class SignInWithEmailAndPasswordUseCase {
  Future<User> call({
    required String email,
    required String password,
  });
}

class ServiceSignInWithEmailAndPasswordUseCase
    implements SignInWithEmailAndPasswordUseCase {
  ServiceSignInWithEmailAndPasswordUseCase(this._service);

  final AuthService _service;

  @override
  Future<User> call({
    required String email,
    required String password,
  }) async =>
      _service.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
}
