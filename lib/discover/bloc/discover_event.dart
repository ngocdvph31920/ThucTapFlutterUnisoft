import 'package:equatable/equatable.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class InitialEvent extends LoginEvent {
  const InitialEvent();
}

class ChangeValueCheckBoxEvent extends LoginEvent {
  final int index;
  final bool value;

  const ChangeValueCheckBoxEvent(this.index, this.value);

  @override
  List<Object> get props => [index, value];
}
