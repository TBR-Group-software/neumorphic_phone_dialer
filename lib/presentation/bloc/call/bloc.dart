import 'package:bloc/src/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:neumorphic_phone_dialer/domain/usecase/call/make.dart';
import 'package:neumorphic_phone_dialer/presentation/bloc/base.dart';

part 'event.dart';

part 'bloc.freezed.dart';

part 'state.dart';

class CallBloc extends AppBloc<CallEvent, CallState> {
  CallBloc(this._makeCallUseCase)
      : super(
          const CallState(status: BlocStatus.loading),
        ) {
    on<CallEvent>((
      CallEvent event,
      Emitter<CallState> emit,
    ) async {
      try {
        await event.when<Future<void>>(
          makeCall: (String phoneNumber) => _makeCall(
            emit: emit,
            phoneNumber: phoneNumber,
          ),
        );
      } on Object catch (error) {
        emit(_errorState(error));
      }
    });
  }

  final MakeCallUseCase _makeCallUseCase;

  Future<void> _makeCall({
    required Emitter<CallState> emit,
    required String phoneNumber,
  }) async {
    emit(_loadingState());

    emit(
      await _makeCallUseCase(phoneNumber).then(
        (_) => state.copyWith(
          status: BlocStatus.loaded,
        ),
      ),
    );
  }

  CallState _loadingState() => state.copyWith(status: BlocStatus.loading);

  CallState _errorState(Object error) => state.copyWith(
        status: BlocStatus.error,
        error: error,
      );
}
