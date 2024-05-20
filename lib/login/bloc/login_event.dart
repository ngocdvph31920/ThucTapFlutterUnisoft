import 'package:equatable/equatable.dart';

abstract class RegisterEvent extends Equatable {
  const RegisterEvent();

  @override
  List<Object> get props => [];
}

class LoginStartEvent extends RegisterEvent {
  const LoginStartEvent();
}

class RegisterFirebaseEvent extends RegisterEvent {
  final String fullName;
  final String email;
  final String passWord;

  const RegisterFirebaseEvent(this.fullName, this.email,this.passWord);

  @override
  List<Object> get props => [fullName, email,passWord];
}
