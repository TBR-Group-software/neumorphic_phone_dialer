import 'package:neumorphic_phone_dialer/assembly/factory.dart';
import 'package:neumorphic_phone_dialer/data/gateway/auth/firebase.dart';
import 'package:neumorphic_phone_dialer/data/model/user.dart';
import 'package:neumorphic_phone_dialer/domain/entity/user.dart';
import 'package:neumorphic_phone_dialer/domain/service/auth.dart';

class AuthServiceImpl implements AuthService {
  AuthServiceImpl(
    this._authGateway,
    this._userFromDtoFactory,
  );

  final FirebaseAuthGateway _authGateway;
  final Factory<User, UserDto> _userFromDtoFactory;

  @override
  Future<void> confirmResetPassword({
    required String code,
    required String newPassword,
  }) async {
    _authGateway.confirmResetPassword(
      code: code,
      newPassword: newPassword,
    );
  }

  @override
  Future<User> getCurrentUser() async => _authGateway.getCurrentUser().then(
        (UserDto dto) => _userFromDtoFactory.create(dto),
      );

  @override
  Future<void> requestResetPassword({required String email}) async {
    _authGateway.requestResetPassword(
      email: email,
    );
  }

  @override
  Future<User> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async =>
      _authGateway
          .signInWithEmailAndPassword(
            email: email,
            password: password,
          )
          .then(
            (UserDto dto) => _userFromDtoFactory.create(dto),
          );

  @override
  Future<User> signUpWithEmailAndPassword({
    required String email,
    required String password,
  }) async =>
      _authGateway
          .signUpWithEmailAndPassword(
            email: email,
            password: password,
          )
          .then(
            (UserDto dto) => _userFromDtoFactory.create(dto),
          );
}
