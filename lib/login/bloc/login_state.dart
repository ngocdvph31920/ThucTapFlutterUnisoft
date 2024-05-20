import 'package:equatable/equatable.dart';

class LoginState extends Equatable {
  const LoginState({
    required this.loginStatus,
  });

  final String loginStatus;

  LoginState checklogin({String? status}) {
    return LoginState(
      loginStatus: status ?? '',
    );
  }

  @override
  List<Object> get props => [loginStatus];
}
