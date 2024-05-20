import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/login/bloc/login_event.dart';
import 'package:ecommerce_app/login/bloc/login_state.dart';

import '../../firebase_auth/firebase_auth_service.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState(loginStatus: '')) {
    on<LoginFirebaseEvent>(_loginFirebase);
  }

  Future<void> _loginFirebase(
      LoginFirebaseEvent event, Emitter<LoginState> emit) async {

    final AuthService auth = AuthService();
    final user =
        await auth.signInUserWithEmaiAndPassword(event.email, event.passWord);

    if (user != null) {
      emit(state.checklogin(status: 'OK'));
      print('Thành công');
    } else {
      emit(state.checklogin(status: 'KO'));
      print('Thất bại');
    }
  }
}
