part of 'auth_bloc.dart';

class AuthState extends Equatable {
  const AuthState({
    this.exception,
    this.isLoading,
  });

  final bool? isLoading;
  final Exception? exception;

  @override
  List<Object?> get props => [isLoading, exception];

  AuthState copyWith({
    bool? isLoading,
    Exception? exception,
  }) {
    return AuthState(
      isLoading: isLoading ?? this.isLoading,
      exception: exception ?? this.exception,
    );
  }
}

class AuthLoggedOut extends AuthState {
  const AuthLoggedOut({
    super.isLoading,
  });
}

class AuthLoggedIn extends AuthState {
  const AuthLoggedIn(
    this.lineUser, {
    super.isLoading,
  });

  final UserProfile lineUser;

  @override
  List<UserProfile> get props => [lineUser];
}
