import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class FlutterCallGateway {
  Future<void> makeCall(String phoneNumber) async {
    await FlutterPhoneDirectCaller.callNumber(phoneNumber);
  }
}
