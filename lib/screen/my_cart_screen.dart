import 'package:ecommerce_app/model/product.dart';
import 'package:ecommerce_app/screen/login_screen.dart';
import 'package:flutter/material.dart';

class MyCart extends StatefulWidget {
  const MyCart({super.key});

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
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
                          child: SizedBox(
                            width: 24,
                            height: 24,
                            child: Image.asset('assets/images/right.png'),
                          ),
                        ),
                        Expanded(child: Container()),
                        const Text(
                          'My Cart',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const Spacer(),
                        SizedBox(
                          width: 24,
                          height: 24,
                          child:
                              Image.asset('assets/images/iconnotification.png'),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 365,
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: listProductFake.length,
                        itemBuilder: (BuildContext context, int index) {
                          final cart = listProductFake[index];
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 17),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 103,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: const Color(0XFFF2F2F2),
                                borderRadius:
                                    BorderRadius.circular(12), // Bo góc 12
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    width: 83,
                                    height: 89,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.black12),
                                    ),
                                    child: Image.asset(
                                      'assets/images/${cart.image}',
                                    ),
                                  ),
                                  const SizedBox(width: 17),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        ' ${cart.title}',
                                        style: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        'Size ${cart.size}',
                                        style: const TextStyle(
                                          color: Colors.black54,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      const SizedBox(height: 20),
                                      Text(
                                        'PKR ${cart.price}',
                                        style: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Expanded(child: Container()),
                                  Column(
                                    children: [
                                      SizedBox(
                                        width: 16,
                                        height: 16,
                                        child: Image.asset(
                                            'assets/images/trash03.png'),
                                      ),
                                      const SizedBox(height: 39),
                                      Row(
                                        children: [
                                          Container(
                                            width: 22,
                                            height: 22,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(4),
                                              border: Border.all(
                                                color: Colors.black,
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
                                          Container(
                                            width: 22,
                                            height: 22,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(4),
                                              border: Border.all(
                                                color: Colors.black,
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
                        color: Colors.black12,
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: 'Add a voucher',
                          border: InputBorder.none,
                          isDense: true,
                          contentPadding: EdgeInsets.all(15),
                          hintStyle:
                              TextStyle(fontSize: 17, color: Colors.black38),
                        ),
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    const SizedBox(height: 35),
                    Row(
                      children: [
                        const Text(
                          'Sub-total',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Expanded(child: Container()),
                        const Text(
                          'PKR 1,190',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 17),
                    const Row(
                      children: [
                        Text(
                          'VAT (%)',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Spacer(),
                        Text(
                          'PKR 0.00',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 17),
                    const Row(
                      children: [
                        Text(
                          'Shipping fee',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Spacer(),
                        Text(
                          'PKR 80',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 27),
                    SizedBox(
                      height: 1,
                      width: double.infinity,
                      child: Container(
                        color: Colors.black45,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        const Text(
                          'Total',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Expanded(child: Container()),
                        const Text(
                          'PKR 5,950',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 1,
            width: double.infinity,
            child: Container(
              color: Colors.black54,
            ),
          ),
          SizedBox(
            height: 90,
            child: Container(
              color: const Color(0XFFFFFFFF),
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
                        MaterialPageRoute(builder: (context) {
                          return const LoginScreen();
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
                        ),
                      ),
                    ),
                    child: const Text(
                      "Checkout ->",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
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
