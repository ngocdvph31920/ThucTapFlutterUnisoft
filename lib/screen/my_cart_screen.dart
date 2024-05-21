import 'package:ecommerce_app/model/product.dart';
import 'package:ecommerce_app/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../login/bloc/login_bloc.dart';

class MyCart extends StatefulWidget {
  const MyCart({super.key});

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 25,
              right: 25,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 50),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: SvgPicture.asset(
                        width: 24,
                        'assets/icons/back.svg',
                      ),
                    ),
                    Expanded(child: Container()),
                    const Text(
                      'My Cart',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const Spacer(),
                    SvgPicture.asset(
                      width: 24,
                      'assets/icons/notification.svg',
                    ),
                  ],
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 25,
                  right: 25,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 350,
                      child: ListView.builder(
                        padding: EdgeInsets.zero,
                        scrollDirection: Axis.vertical,
                        itemCount: listProductCart.length,
                        itemBuilder: (BuildContext context, int index) {
                          final cart = listProductCart[index];
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 103,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: const Color(0XFFF2F2F2).withOpacity(1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    width: 83,
                                    height: 79,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                        color: const Color(0XFF000000).withOpacity(0.05),
                                      ),
                                    ),
                                    child: Image.asset(
                                      'assets/images/${cart.image}',
                                    ),
                                  ),
                                  const SizedBox(width: 17),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        cart.title,
                                        style: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        'Size ${cart.size}',
                                        style: TextStyle(
                                          color: const Color(0XFF000000).withOpacity(0.6),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      const SizedBox(height: 20),
                                      Text(
                                        'PKR ${cart.price}',
                                        style: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0XFF000000),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Expanded(child: Container()),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      GestureDetector(
                                        onTap: () {

                                        },
                                        child: SvgPicture.asset(
                                          'assets/icons/delete.svg',
                                          width: 16,
                                        ),
                                      ),
                                      const SizedBox(width: 5),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          // Decrease quantity functionality
                                        },
                                        child: Container(
                                          width: 22,
                                          height: 22,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(4),
                                            border: Border.all(
                                              color: const Color(0XFF000000).withOpacity(0.2),
                                            ),
                                          ),
                                          alignment: Alignment.center,
                                          child: const Text(
                                            '-',
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      Text(
                                        '${cart.quantity}',
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      GestureDetector(
                                        onTap: () {
                                          // Increase quantity functionality
                                        },
                                        child: Container(
                                          width: 22,
                                          height: 22,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(4),
                                            border: Border.all(
                                              color: const Color(0XFF000000).withOpacity(0.2),
                                            ),
                                          ),
                                          alignment: Alignment.center,
                                          child: const Text(
                                            '+',
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),

                              ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 30),
                    Container(
                      width: double.infinity,
                      height: 53,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0XFF000000).withOpacity(0.05),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Add a voucher',
                          border: InputBorder.none,
                          isDense: true,
                          contentPadding: const EdgeInsets.all(15),
                          hintStyle: TextStyle(
                            fontSize: 17,
                            color: const Color(0XFF000000).withOpacity(0.6),
                          ),
                        ),
                        style: const TextStyle(fontSize: 17),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Row(
                      children: [
                        Text(
                          'Sub-total',
                          style: TextStyle(
                            color: const Color(0XFF000000).withOpacity(0.6),
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Expanded(child: Container()),
                        const Text(
                          'PKR 1,190',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Color(0XFF000000),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Row(
                      children: [
                        Text(
                          'VAT (%)',
                          style: TextStyle(
                            color: const Color(0XFF000000).withOpacity(0.6),
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Spacer(),
                        const Text(
                          'PKR 0.00',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Color(0XFF000000),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Row(
                      children: [
                        Text(
                          'Shipping fee',
                          style: TextStyle(
                            color: const Color(0XFF000000).withOpacity(0.6),
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Spacer(),
                        const Text(
                          'PKR 80',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Color(0XFF000000),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 25),
                    SizedBox(
                      height: 1,
                      width: double.infinity,
                      child: Container(
                        color: const Color(0XFF000000).withOpacity(0.2),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Row(
                      children: [
                        const Text(
                          'Total',
                          style: TextStyle(
                            color: Color(0XFF000000),
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Expanded(child: Container()),
                        const Text(
                          'PKR 5,950',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Color(0XFF000000),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 101,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0XFF000000).withOpacity(0.2),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 25,
                  right: 25,
                ),
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BlocProvider(
                            create: (BuildContext context) => LoginBloc(),
                            child: const LoginScreen(),
                          ),
                        ),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                      minimumSize: MaterialStateProperty.all<Size>(const Size(341, 58)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      shadowColor: MaterialStateProperty.all<Color>(Colors.transparent),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Checkout",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(width: 15),
                        SvgPicture.asset(
                          'assets/icons/arrow.svg',
                          width: 24,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
