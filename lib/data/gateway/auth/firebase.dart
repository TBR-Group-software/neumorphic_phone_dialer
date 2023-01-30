import 'package:firebase_auth/firebase_auth.dart';
import 'package:neumorphic_phone_dialer/assembly/factory.dart';
import 'package:neumorphic_phone_dialer/data/model/user.dart';

class FirebaseAuthGateway {
  FirebaseAuthGateway(this._dtoFromFirebaseUserFactory);

  final FirebaseAuth auth = FirebaseAuth.instance;
  final Factory<UserDto, User> _dtoFromFirebaseUserFactory;

  User _getUserFromCredentials(UserCredential credential) {
    final User? user = credential.user;
    if (user != null) {
      return user;
    } else {
      throw Exception('No user');
    }
  }

  Future<UserDto> getCurrentUser() async {
    final User? user = auth.currentUser;
    if (user != null) {
      return _dtoFromFirebaseUserFactory.create(user);
    } else {
      throw Exception('No current user');
    }
  }

  Future<UserDto> signUpWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    final UserCredential credential = await auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );

    return _dtoFromFirebaseUserFactory.create(
      _getUserFromCredentials(credential),
    );
  }

  Future<UserDto> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    final UserCredential credential = await auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );

    return _dtoFromFirebaseUserFactory.create(
      _getUserFromCredentials(credential),
    );
  }

  Future<void> requestResetPassword({
    required String email,
  }) async {
    await auth.sendPasswordResetEmail(
      email: email,
    );
  }

  Future<void> confirmResetPassword({
    required String code,
    required String newPassword,
  }) async {
    await auth.confirmPasswordReset(
      code: code,
      newPassword: newPassword,
    );
  }
}
