import 'package:neumorphic_phone_dialer/domain/service/call.dart';

abstract class MakeCallUseCase {
  Future<void> call(String phoneNumber);
}

class ServiceMakeCallUseCase implements MakeCallUseCase {
  final CallService _service;

  ServiceMakeCallUseCase(this._service);

  @override
  Future<void> call(String phoneNumber) => _service.makeCall(phoneNumber);
}
