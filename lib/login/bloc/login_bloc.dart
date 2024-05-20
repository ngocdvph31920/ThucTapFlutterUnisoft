import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/login/bloc/login_event.dart';
import 'package:ecommerce_app/login/bloc/login_state.dart';

import '../../firebase_auth/firebase_auth_service.dart';

class LoginBloc extends Bloc<RegisterEvent, RegisterState> {
  LoginBloc() : super(const RegisterState(registerStatus: '')) {
    on<RegisterFirebaseEvent>(_loginFirebase);
  }

  Future<void> _loginFirebase(
      RegisterFirebaseEvent event, Emitter<RegisterState> emit) async {

    final AuthService auth = AuthService();
    final user =
        await auth.signInUserWithEmaiAndPassword(event.email, event.passWord);

    if (user != null) {
      emit(state.checkregister(status: 'OK'));
      print('Thành công');
    } else {
      emit(state.checkregister(status: 'KO'));
      print('Thất bại');
    }
  }
}
