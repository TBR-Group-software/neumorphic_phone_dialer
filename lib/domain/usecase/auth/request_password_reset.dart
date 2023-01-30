import 'package:neumorphic_phone_dialer/domain/service/auth.dart';

abstract class RequestPasswordRestUseCase {
  Future<void> call({
    required String email,
  });
}

class ServiceRequestPasswordRestUseCase
    implements RequestPasswordRestUseCase {
  ServiceRequestPasswordRestUseCase(this._service);

  final AuthService _service;

  @override
  Future<void> call({
    required String email,
  }) async =>
      _service.requestResetPassword(
        email: email,
      );
}
