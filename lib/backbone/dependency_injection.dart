import 'package:contacts_service/contacts_service.dart' as cs;
import 'package:firebase_auth/firebase_auth.dart' as firebase;
import 'package:get_it/get_it.dart';
import 'package:neumorphic_phone_dialer/assembly/entity/contact/from/model.dart';
import 'package:neumorphic_phone_dialer/assembly/entity/user/from/dto.dart';
import 'package:neumorphic_phone_dialer/assembly/factory.dart';
import 'package:neumorphic_phone_dialer/assembly/model/contact/from/flutter.dart';
import 'package:neumorphic_phone_dialer/assembly/model/user/from/firebase.dart';
import 'package:neumorphic_phone_dialer/data/gateway/auth/firebase.dart';
import 'package:neumorphic_phone_dialer/data/gateway/call/flutter.dart';
import 'package:neumorphic_phone_dialer/data/gateway/contact/flutter.dart';
import 'package:neumorphic_phone_dialer/data/model/contact.dart';
import 'package:neumorphic_phone_dialer/data/model/user.dart';
import 'package:neumorphic_phone_dialer/data/service/auth.dart';
import 'package:neumorphic_phone_dialer/data/service/call.dart';
import 'package:neumorphic_phone_dialer/data/service/contact.dart';
import 'package:neumorphic_phone_dialer/domain/entity/contact.dart';
import 'package:neumorphic_phone_dialer/domain/entity/user.dart';
import 'package:neumorphic_phone_dialer/domain/service/auth.dart';
import 'package:neumorphic_phone_dialer/domain/service/call.dart';
import 'package:neumorphic_phone_dialer/domain/service/contact.dart';
import 'package:neumorphic_phone_dialer/domain/usecase/auth/confirm_password_reset.dart';
import 'package:neumorphic_phone_dialer/domain/usecase/auth/get_current_user.dart';
import 'package:neumorphic_phone_dialer/domain/usecase/auth/request_password_reset.dart';
import 'package:neumorphic_phone_dialer/domain/usecase/auth/sign_in_wiht_email_and_password.dart';
import 'package:neumorphic_phone_dialer/domain/usecase/auth/sign_up_with_email_and_password.dart';
import 'package:neumorphic_phone_dialer/domain/usecase/call/make.dart';
import 'package:neumorphic_phone_dialer/domain/usecase/contact/load.dart';
import 'package:neumorphic_phone_dialer/domain/usecase/contact/search.dart';
import 'package:neumorphic_phone_dialer/presentation/bloc/auth/bloc.dart';
import 'package:neumorphic_phone_dialer/presentation/bloc/call/bloc.dart';
import 'package:neumorphic_phone_dialer/presentation/bloc/contacts/bloc.dart';

GetIt sl = GetIt.instance;

void init() {
  sl.registerLazySingleton<FlutterCallGateway>(
    () => FlutterCallGateway(),
  );

  sl.registerLazySingleton<CallService>(
    () => CallServiceImpl(
      sl.get(),
    ),
  );

  sl.registerLazySingleton<Factory<Contact, ContactDto>>(
    () => ContactFromDtoFactory(),
  );

  sl.registerLazySingleton<Factory<ContactDto, cs.Contact>>(
    () => ContactDtoFromFlutterFactory(),
  );

  sl.registerLazySingleton<FlutterContactGateWay>(
    () => FlutterContactGateWay(
      sl.get(),
    ),
  );

  sl.registerLazySingleton<ContactService>(
    () => ContactServiceImpl(
      sl.get(),
      sl.get(),
    ),
  );

  sl.registerLazySingleton<MakeCallUseCase>(
    () => ServiceMakeCallUseCase(
      sl.get(),
    ),
  );

  sl.registerLazySingleton<LoadContactsUseCase>(
    () => ServiceLoadContactsUseCase(
      sl.get(),
    ),
  );

  sl.registerLazySingleton<SearchContactsUseCase>(
    () => ServiceSearchContactsUseCase(
      sl.get(),
    ),
  );

  sl.registerLazySingleton<ContactsBloc>(
    () => ContactsBloc(
      sl.get(),
      sl.get(),
    ),
  );

  sl.registerLazySingleton<CallBloc>(
    () => CallBloc(
      sl.get(),
    ),
  );

  sl.registerLazySingleton<Factory<UserDto, firebase.User>>(
    () => UserDtoFromFirebaseUserFactory(),
  );

  sl.registerLazySingleton<Factory<User, UserDto>>(
    () => UserFromDtoFactory(),
  );

  sl.registerLazySingleton<FirebaseAuthGateway>(
    () => FirebaseAuthGateway(
      sl.get(),
    ),
  );

  sl.registerLazySingleton<AuthService>(
    () => AuthServiceImpl(
      sl.get(),
      sl.get(),
    ),
  );

  sl.registerLazySingleton<ConfirmPasswordResetUseCase>(
    () => ServiceConfirmPasswordResetUseCase(
      sl.get(),
    ),
  );

  sl.registerLazySingleton<GetCurrentUserUseCase>(
    () => ServiceGetCurrentUserUseCase(
      sl.get(),
    ),
  );

  sl.registerLazySingleton<RequestPasswordRestUseCase>(
    () => ServiceRequestPasswordRestUseCase(
      sl.get(),
    ),
  );

  sl.registerLazySingleton<SignInWithEmailAndPasswordUseCase>(
    () => ServiceSignInWithEmailAndPasswordUseCase(
      sl.get(),
    ),
  );

  sl.registerLazySingleton<SignUpWithEmailAndPasswordUseCase>(
    () => ServiceSignUpWithEmailAndPasswordUseCase(
      sl.get(),
    ),
  );

  sl.registerLazySingleton<AuthBloc>(
    () => AuthBloc(
      sl.get(),
      sl.get(),
      sl.get(),
      sl.get(),
      sl.get(),
    ),
  );
}
