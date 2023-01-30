import 'package:neumorphic_phone_dialer/data/gateway/call/flutter.dart';
import 'package:neumorphic_phone_dialer/domain/service/call.dart';

class CallServiceImpl implements CallService {
  final FlutterCallGateway _gateway;

  CallServiceImpl(this._gateway);

  @override
  Future<void> makeCall(String phoneNumber) => _gateway.makeCall(phoneNumber);
}
