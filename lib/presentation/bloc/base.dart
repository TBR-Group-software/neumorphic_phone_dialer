import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neumorphic_phone_dialer/presentation/bloc/state.dart';

export 'package:neumorphic_phone_dialer/presentation/bloc/state.dart';
export 'package:neumorphic_phone_dialer/presentation/bloc/status.dart';

abstract class AppBloc<E, S extends AppBlocState> extends Bloc<E, S> {
  AppBloc(S initialState) : super(initialState);
}
