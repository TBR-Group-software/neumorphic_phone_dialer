import 'package:neumorphic_phone_dialer/domain/service/auth.dart';

abstract class ConfirmPasswordResetUseCase {
  Future<void> call({
    required String code,
    required String newPassword,
  });
}

class ServiceConfirmPasswordResetUseCase
    implements ConfirmPasswordResetUseCase {
  ServiceConfirmPasswordResetUseCase(this._service);

  final AuthService _service;

  @override
  Future<void> call({
    required String code,
    required String newPassword,
  }) async =>
      _service.confirmResetPassword(
        code: code,
        newPassword: newPassword,
      );
}
