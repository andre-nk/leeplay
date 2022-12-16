part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();
}

class AuthLogin extends AuthEvent {
  const AuthLogin();

  @override
  List<Object> get props => [];
}

class AuthLogout extends AuthEvent {
  const AuthLogout();

  @override
  List<Object> get props => [];
}
