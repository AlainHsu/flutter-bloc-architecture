part of 'authentication_bloc.dart';

class AuthenticationState extends Equatable {
  final AuthenticationStatus status;
  final User user;

  AuthenticationState._(
      {this.status = AuthenticationStatus.unknown, this.user = User.empty});

  AuthenticationState.unknown() : this._();

  AuthenticationState.authenticated(User user)
      : this._(status: AuthenticationStatus.authenticated, user: user);

  AuthenticationState.unauthenticated()
      : this._(status: AuthenticationStatus.unauthenticated);

  @override
  List<Object?> get props => [status, user];
}
