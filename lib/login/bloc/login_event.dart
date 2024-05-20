import 'package:equatable/equatable.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class LoginStartEvent extends LoginEvent {
  const LoginStartEvent();
}

class LoginFirebaseEvent extends LoginEvent {
  final String fullName;
  final String email;
  final String passWord;

  const LoginFirebaseEvent(this.fullName, this.email,this.passWord);

  @override
  List<Object> get props => [fullName, email,passWord];
}
