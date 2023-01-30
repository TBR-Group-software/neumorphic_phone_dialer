import 'package:neumorphic_phone_dialer/presentation/bloc/status.dart';

abstract class AppBlocState {
  const AppBlocState({
    required this.status,
    this.error,
    //ignore: avoid_bool_literals_in_conditional_expressions
  }) : assert(status == BlocStatus.error ? error != null : true);

  final BlocStatus status;
  final Object? error;
}
