import 'package:neumorphic_phone_dialer/domain/entity/user.dart';

abstract class AuthService {
  Future<User> getCurrentUser();

  Future<User> signUpWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<User> signInWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<void> requestResetPassword({
    required String email,
  });

  Future<void> confirmResetPassword({
    required String code,
    required String newPassword,
  });
}
