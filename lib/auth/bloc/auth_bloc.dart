import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_line_sdk/flutter_line_sdk.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends HydratedBloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthLoggedOut()) {
    on<AuthLogin>(onAuthLogin);
    on<AuthLogout>(onAuthLogout);
  }

  FutureOr<void> onAuthLogin(
    AuthLogin event,
    Emitter<AuthState> emit,
  ) async {
    try {
      emit(state.copyWith(isLoading: true));
      final loginResult = await LineSDK.instance.login();
      if (loginResult.userProfile != null) {
        emit(
          AuthLoggedIn(
            isLoading: false,
            loginResult.userProfile!,
          ),
        );
      } else {
        throw Exception();
      }
    } on Exception catch (e) {
      emit(
        state.copyWith(
          exception: Exception(
            e.toString().isEmpty ? e.toString() : 'Something went wrong.',
          ),
        ),
      );
    }
  }

  Future<void> onAuthLogout(
    AuthLogout event,
    Emitter<AuthState> emit,
  ) async {
    try {
      emit(state.copyWith(isLoading: true));
      await LineSDK.instance.logout();
      emit(const AuthLoggedOut(isLoading: false));
    } on Exception catch (e) {
      emit(
        state.copyWith(exception: e),
      );
    }
  }

  @override
  AuthState? fromJson(Map<String, dynamic> json) {
    throw UnimplementedError();
  }

  @override
  Map<String, dynamic>? toJson(AuthState state) {
    throw UnimplementedError();
  }
}
