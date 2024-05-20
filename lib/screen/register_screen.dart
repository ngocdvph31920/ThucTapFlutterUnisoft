import 'package:ecommerce_app/login/bloc/login_bloc.dart';
import 'package:ecommerce_app/login/bloc/login_event.dart';
import 'package:ecommerce_app/login/bloc/login_state.dart';
import 'package:ecommerce_app/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  // ignore: prefer_typing_uninitialized_variables
  late final registerBloc;
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  String? status;

  void register(
      {required String fullName,
      required String password,
      required String email}) {
    registerBloc.add(
      LoginFirebaseEvent(fullName, email, password),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    registerBloc = context.read<LoginBloc>();
  }
  @override
  void dispose() {
   fullNameController.dispose();
   emailController.dispose();
   passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) => {
        if (state.loginStatus == 'OK')
          {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BlocProvider(
                  create: (BuildContext context) => LoginBloc(),
                  child:  const LoginScreen(),
                ),
              ),
            )
          }
        else
          {
            setState(() => status = 'Đăng kí thất bại')
          }
      },
      child: _uI(),
    );

  }

  Widget _uI() => Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(
            left: 25,
            right: 25,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 50),
                const Text(
                  'Create an account',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 135),
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Full name',
                            style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.normal,
                              color: Color(0XFF000000),
                            ),
                          ),
                          Container(
                            width: 341,
                            height: 53,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0XFF000000).withOpacity(0.05),
                            ),
                            child: TextField(
                              controller: fullNameController,
                              decoration: InputDecoration(
                                hintText: 'Enter your full name',
                                border: InputBorder.none,
                                isDense: true,
                                contentPadding: const EdgeInsets.all(15),
                                hintStyle: TextStyle(
                                    fontSize: 17,
                                    color: const Color(0XFF000000)
                                        .withOpacity(0.6)),
                              ),
                              style: const TextStyle(fontSize: 17),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Email',
                            style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.normal,
                              color: Color(0XFF000000),
                            ),
                          ),
                          Container(
                            width: 341,
                            height: 53,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0XFF000000).withOpacity(0.05),
                            ),
                            child: TextField(
                              controller: emailController,
                              decoration: InputDecoration(
                                hintText: 'Enter your email address',
                                border: InputBorder.none,
                                isDense: true,
                                contentPadding: const EdgeInsets.all(15),
                                hintStyle: TextStyle(
                                    fontSize: 17,
                                    color: const Color(0XFF000000)
                                        .withOpacity(0.6)),
                              ),
                              style: const TextStyle(fontSize: 17),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Password',
                            style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.normal,
                              color: Color(0XFF000000),
                            ),
                          ),
                          Container(
                            width: 341,
                            height: 58,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0XFF000000).withOpacity(0.05),
                            ),
                            child: TextField(
                              controller: passwordController,
                              decoration: InputDecoration(
                                hintText: 'Enter your password',
                                border: InputBorder.none,
                                isDense: true,
                                contentPadding: const EdgeInsets.all(15),
                                hintStyle: TextStyle(
                                    fontSize: 18,
                                    color: const Color(0XFF000000)
                                        .withOpacity(0.6)),
                                suffixIcon: const Icon(Icons.remove_red_eye),
                              ),
                              style: const TextStyle(fontSize: 17),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Text(status ?? ''),
                ),
                const SizedBox(height: 25),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      register(
                        fullName: fullNameController.text,
                        password: passwordController.text,
                        email: emailController.text,
                      );
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.black),
                        minimumSize: MaterialStateProperty.all<Size>(
                            const Size(341, 58)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ))),
                    child: const Text(
                      "Sign In",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
