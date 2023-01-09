import 'package:contacts_service/contacts_service.dart' as cs;
import 'package:get_it/get_it.dart';
import 'package:neumorphic_phone_dialer/assembly/entity/from/model.dart';
import 'package:neumorphic_phone_dialer/assembly/factory.dart';
import 'package:neumorphic_phone_dialer/assembly/model/from/flutter.dart';
import 'package:neumorphic_phone_dialer/data/gateway/call/flutter.dart';
import 'package:neumorphic_phone_dialer/data/gateway/contact/flutter.dart';
import 'package:neumorphic_phone_dialer/data/model/contact.dart';
import 'package:neumorphic_phone_dialer/data/service/call.dart';
import 'package:neumorphic_phone_dialer/data/service/contact.dart';
import 'package:neumorphic_phone_dialer/domain/entity/contact.dart';
import 'package:neumorphic_phone_dialer/domain/service/call.dart';
import 'package:neumorphic_phone_dialer/domain/service/contact.dart';
import 'package:neumorphic_phone_dialer/domain/usecase/call/make.dart';
import 'package:neumorphic_phone_dialer/domain/usecase/contact/load.dart';
import 'package:neumorphic_phone_dialer/domain/usecase/contact/search.dart';
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
}
