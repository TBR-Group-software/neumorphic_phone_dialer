import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:neumorphic_phone_dialer/domain/entity/user.dart';
import 'package:neumorphic_phone_dialer/domain/usecase/auth/confirm_password_reset.dart';
import 'package:neumorphic_phone_dialer/domain/usecase/auth/get_current_user.dart';
import 'package:neumorphic_phone_dialer/domain/usecase/auth/request_password_reset.dart';
import 'package:neumorphic_phone_dialer/domain/usecase/auth/sign_in_wiht_email_and_password.dart';
import 'package:neumorphic_phone_dialer/domain/usecase/auth/sign_up_with_email_and_password.dart';
import 'package:neumorphic_phone_dialer/presentation/bloc/base.dart';

part 'bloc.freezed.dart';

part 'event.dart';

part 'state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(
    this._confirmPasswordResetUseCase,
    this._getCurrentUserUseCase,
    this._requestPasswordResetUseCase,
    this._signInWithEmailAndPasswordUseCase,
    this._signUpWithEmailAndPasswordUseCase,
  ) : super(
          const AuthState(
            status: BlocStatus.loaded,
            user: null,
          ),
        ) {
    on<AuthEvent>((AuthEvent event, Emitter<AuthState> emit) async {
      try {
        await event.when<Future<void>>(
          getCurrentUser: () => _getCurrentUser(emit: emit),
          signInWithEmailAndPassword: (
            String email,
            String password,
          ) =>
              _signInWithEmailAndPassword(
            email: email,
            password: password,
            emit: emit,
          ),
          signUpWithEmailAndPassword: (
            String email,
            String password,
          ) =>
              _signUpWithEmailAndPassword(
            email: email,
            password: password,
            emit: emit,
          ),
          requestPasswordReset: (String email) => _requestPasswordReset(
            email: email,
            emit: emit,
          ),
          confirmPasswordReset: (
            String code,
            String newPassword,
          ) =>
              _confirmPasswordReset(
            code: code,
            newPassword: newPassword,
            emit: emit,
          ),
        );
      } on Object catch (error) {
        emit(_errorState(error));
      }
    });
  }

  final ConfirmPasswordResetUseCase _confirmPasswordResetUseCase;
  final GetCurrentUserUseCase _getCurrentUserUseCase;
  final RequestPasswordRestUseCase _requestPasswordResetUseCase;
  final SignInWithEmailAndPasswordUseCase _signInWithEmailAndPasswordUseCase;
  final SignUpWithEmailAndPasswordUseCase _signUpWithEmailAndPasswordUseCase;

  Future<void> _getCurrentUser({required Emitter<AuthState> emit}) async {
    emit(_loadingState());

    await _getCurrentUserUseCase().then((User user) {
      emit(state.copyWith(user: user));
    });
  }

  Future<void> _signInWithEmailAndPassword({
    required String email,
    required String password,
    required Emitter<AuthState> emit,
  }) async {
    emit(_loadingState());

    await _signInWithEmailAndPasswordUseCase(
      email: email,
      password: password,
    ).then((User user) {
      emit(
        state.copyWith(
          status: BlocStatus.loaded,
          user: user,
        ),
      );
    });
  }

  Future<void> _signUpWithEmailAndPassword({
    required String email,
    required String password,
    required Emitter<AuthState> emit,
  }) async {
    emit(_loadingState());

    await _signUpWithEmailAndPasswordUseCase(
      email: email,
      password: password,
    ).then((User user) {
      emit(
        state.copyWith(
          status: BlocStatus.loaded,
          user: user,
        ),
      );
    });
  }

  Future<void> _requestPasswordReset({
    required String email,
    required Emitter<AuthState> emit,
  }) async {
    emit(_loadingState());

    await _requestPasswordResetUseCase(
      email: email,
    ).then((_) {
      emit(
        state.copyWith(
          status: BlocStatus.loaded,
        ),
      );
    });
  }

  Future<void> _confirmPasswordReset({
    required String code,
    required String newPassword,
    required Emitter<AuthState> emit,
  }) async {
    emit(_loadingState());

    await _confirmPasswordResetUseCase(
      code: code,
      newPassword: newPassword,
    ).then((_) {
      emit(
        state.copyWith(
          status: BlocStatus.loaded,
        ),
      );
    });
  }

  AuthState _loadingState() => state.copyWith(status: BlocStatus.loading);

  AuthState _errorState(Object error) => state.copyWith(
        status: BlocStatus.error,
        error: error,
      );
}
