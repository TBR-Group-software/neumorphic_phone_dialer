import 'package:get_it/get_it.dart';
import 'package:neumorphic_phone_dialer/data/gateway/call/flutter.dart';
import 'package:neumorphic_phone_dialer/data/service/call.dart';
import 'package:neumorphic_phone_dialer/domain/service/call.dart';
import 'package:neumorphic_phone_dialer/domain/usecase/call/make.dart';
import 'package:neumorphic_phone_dialer/presentation/bloc/call/bloc.dart';

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

  sl.registerLazySingleton<MakeCallUseCase>(
    () => ServiceMakeCallUseCase(
      sl.get(),
    ),
  );

  sl.registerLazySingleton<CallBloc>(
    () => CallBloc(
      sl.get(),
    ),
  );
}
