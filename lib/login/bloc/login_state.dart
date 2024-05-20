import 'package:equatable/equatable.dart';

class RegisterState extends Equatable {
  const RegisterState({
    required this.registerStatus,
  });

  final String registerStatus;

  RegisterState checkregister({String? status}) {
    return RegisterState(
      registerStatus: status ?? '',
    );
  }

  @override
  List<Object> get props => [registerStatus];
}
