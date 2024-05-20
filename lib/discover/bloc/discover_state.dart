import 'package:equatable/equatable.dart';

class LoginState extends Equatable {
  const LoginState({
    required this.listOptions,
  });

  final List<String> listOptions;

  LoginState copyWith({List<String>? listOptions}) {
    return LoginState(
      listOptions: listOptions ?? this.listOptions,
    );
  }

  @override
  List<Object> get props => [listOptions];
}
