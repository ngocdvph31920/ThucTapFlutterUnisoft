import 'package:ecommerce_app/discover/discover_screen.dart';
import 'package:ecommerce_app/login/bloc/login_bloc.dart';
import 'package:ecommerce_app/login/bloc/login_event.dart';
import 'package:ecommerce_app/login/bloc/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import '../discover/bloc/discover_bloc.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  // ignore: prefer_typing_uninitialized_variables
  late final loginBloc;
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  String? status;

  void login(
      {required String fullName,
      required String password,
      required String email}) {
    loginBloc.add(
      LoginFirebaseEvent(fullName, email, password),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loginBloc = context.read<LoginBloc>();
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
                  create: (BuildContext context) => DiscoverBloc(),
                  child: const Discover(),
                ),
              ),
            )
          }
        else
          {
            setState(() => status = 'Thất bại !')
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
                Text(
                  'Let’s create your account',
                  style: TextStyle(
                    color: const Color(0XFF000000).withOpacity(0.6),
                    fontSize: 19,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const SizedBox(height: 35),
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
                          const SizedBox(height: 5),
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
                          const SizedBox(height: 5),
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
                          const SizedBox(height: 5),
                          Container(
                            width: 341,
                            height: 58,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0XFF000000).withOpacity(0.05),
                            ),
                            child: Stack(
                              alignment: Alignment.centerRight,
                              children: [
                                // TextField with Positioned widget
                                Positioned(
                                  left: 0, // Position TextField to the left
                                  right: 40, // Leave space for the eye icon
                                  child: TextField(
                                    controller: passwordController,
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      hintText: 'Enter your password',
                                      border: InputBorder.none,
                                      isDense: true,
                                      contentPadding: const EdgeInsets.all(15),
                                      hintStyle: TextStyle(
                                        fontSize: 18,
                                        color: const Color(0XFF000000).withOpacity(0.6),
                                      ),
                                    ),
                                    style: const TextStyle(fontSize: 17),
                                  ),
                                ),
                                // GestureDetector with Positioned widget
                                Positioned(
                                  right: 15,
                                  child: GestureDetector(
                                    onTap: () {

                                    },
                                    child: SvgPicture.asset(
                                      'assets/icons/eye.svg',
                                      width: 24,
                                    ),
                                  ),
                                ),
                              ],
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
                      login(
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
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(left: 10.0),
                        height: 1.0,
                        color: Colors.black45,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        'Or',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(right: 10.0),
                        height: 1.0,
                        color: Colors.black45,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Center(
                  child: Container(
                    width: 341,
                    height: 58,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          color: const Color(0XFF000000).withOpacity(0.3),
                          width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset(
                            'assets/icons/google.svg',
                            width: 24,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Sign Up with Google',
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Center(
                  child: Container(
                    width: 341,
                    height: 58,
                    decoration: BoxDecoration(
                      color: const Color(0XFF1877F2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset(
                            'assets/icons/facebook.svg',
                            width: 24,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Sign Up with Facebook',
                            style: TextStyle(
                              fontSize: 17,
                              color: Color(0XFFFFFFFF),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 76),
                Center(
                  child: RichText(
                    text: const TextSpan(
                      text: 'Already a member? ',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black45,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Log In',
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
