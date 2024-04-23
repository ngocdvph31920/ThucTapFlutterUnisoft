import 'package:ecommerce_app/screen/discover_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              const Text(
                'Let’s create your account',
                style: TextStyle(
                  fontSize: 17,
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
                        Container(
                          width: 341,
                          height: 53,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black12,
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                              hintText: 'Enter your full name',
                              border: InputBorder.none,
                              isDense: true,
                              contentPadding: EdgeInsets.all(15),
                              hintStyle: TextStyle(
                                  fontSize: 17, color: Colors.black38),
                            ),
                            style: TextStyle(fontSize: 17),
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
                            color: Colors.black12,
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                              hintText: 'Enter your email address',
                              border: InputBorder.none,
                              isDense: true,
                              contentPadding: EdgeInsets.all(15),
                              hintStyle: TextStyle(
                                  fontSize: 17, color: Colors.black38),
                            ),
                            style: TextStyle(fontSize: 17),
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
                            color: Colors.black12,
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                              hintText: 'Enter your password',
                              border: InputBorder.none,
                              isDense: true,
                              contentPadding: EdgeInsets.all(15),
                              hintStyle: TextStyle(
                                  fontSize: 18, color: Colors.black38),
                              suffixIcon: Icon(Icons.remove_red_eye),
                            ),
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return const Discover();
                      }),
                    );
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                      minimumSize:
                          MaterialStateProperty.all<Size>(const Size(341, 58)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
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
              const SizedBox(height: 25),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
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
                      height: 1.0,
                      color: Colors.black45,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              Center(
                child: Container(
                  width: 341,
                  height: 58,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black45, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          'assets/images/icongoogle.png',
                          width: 22,
                          height: 22,
                          fit: BoxFit.cover,
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
              const SizedBox(height: 25),
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
                        child: Image.asset(
                          'assets/images/logofacebook.png',
                          width: 22,
                          height: 22,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Sign Up with Facebook',
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
}
