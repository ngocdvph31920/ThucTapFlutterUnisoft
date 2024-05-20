import 'package:flutter/material.dart';
import 'package:ecommerce_app/screen/my_cart_screen.dart';
import 'package:flutter_svg/svg.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  String _sizeProduct = '';

  void _changeSizeProduct(String size) {
    setState(() {
      _sizeProduct = size;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
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
                        child: SvgPicture.asset(
                          width: 24,
                          'assets/icons/back.svg',
                        ),
                      ),
                      Expanded(child: Container()),
                      const Text(
                        'Details',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Expanded(child: Container()),
                      SvgPicture.asset(
                        width: 24,
                        'assets/icons/notification.svg',
                      ),
                    ],
                  ),
                  const SizedBox(height: 7),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 368.53,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.transparent,
                              ),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/images/detailproduct.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(height: 19),
                          const Text(
                            'Regular fit slogan',
                            style: TextStyle(
                              color: Color(0XFF000000),
                              fontWeight: FontWeight.w700,
                              fontSize: 26,
                            ),
                          ),
                          const SizedBox(height: 6.47),
                          Row(
                            children: [
                              SvgPicture.asset(
                                width: 24,
                                'assets/icons/hear.svg',
                              ),
                              const SizedBox(width: 3),
                              RichText(
                                text:  TextSpan(
                                  text: '4.5/5 ',
                                  style: const TextStyle(
                                    fontSize: 17,
                                    color: Color(0XFF000000),
                                    fontWeight: FontWeight.bold,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: '(45 reviews)',
                                      style: TextStyle(
                                        fontSize: 17,
                                        color:   const Color(0XFF000000).withOpacity(0.6),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 27.51),
                         Text(
                            'The name says it all, the right size slightly snugs the'
                                ' body leaving enough room for comfort in the sleeves'
                                ' and waist.',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color:   const Color(0XFF000000).withOpacity(0.6),
                              fontSize: 15.5,
                              height: 1.9,
                            ),
                          ),
                          const SizedBox(height: 25.84),
                          const Text(
                            'Choose size',
                            style: TextStyle(
                              color: Color(0XFF000000),
                              fontWeight: FontWeight.w700,
                              fontSize: 24,
                            ),
                          ),
                          const SizedBox(height: 12),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  _changeSizeProduct('S');
                                },
                                child: SizedBox(
                                  width: 55.0,
                                  height: 60.0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      border: Border.all(
                                        color:  const Color(0XFF000000).withOpacity(0.2),
                                        width: 1.0,
                                      ),
                                      color: _sizeProduct == 'S'
                                          ? const Color(0XFF000000)
                                          : const Color(0XFFFFFFFF),
                                    ),
                                    padding: const EdgeInsets.all(12.0),
                                    child: Text(
                                      'S',
                                      style: TextStyle(
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.w500,
                                        color: _sizeProduct != 'S'
                                            ? const Color(0XFF000000)
                                            : const Color(0XFFFFFFFF),
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              GestureDetector(
                                onTap: () {
                                  _changeSizeProduct('M');
                                },
                                child: SizedBox(
                                  width: 55.0,
                                  height: 60.0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      border: Border.all(
                                        color: const Color(0XFF000000).withOpacity(0.2),
                                        width: 1.0,
                                      ),
                                      color: _sizeProduct == 'M'
                                          ? const Color(0XFF000000)
                                          : const Color(0XFFFFFFFF),
                                    ),
                                    padding: const EdgeInsets.all(12.0),
                                    child: Text(
                                      'M',
                                      style: TextStyle(
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.w500,
                                        color: _sizeProduct != 'M'
                                            ? const Color(0XFF000000)
                                            : const Color(0XFFFFFFFF),
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              GestureDetector(
                                onTap: () {
                                  _changeSizeProduct('L');
                                },
                                child: SizedBox(
                                  width: 55.0,
                                  height: 60.0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      border: Border.all(
                                        color: const Color(0XFF000000).withOpacity(0.2),
                                        width: 1.0,
                                      ),
                                      color: _sizeProduct == 'L'
                                          ? const Color(0XFF000000)
                                          : const Color(0XFFFFFFFF),
                                    ),
                                    padding: const EdgeInsets.all(12.0),
                                    child: Text(
                                      'L',
                                      style: TextStyle(
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.w500,
                                        color: _sizeProduct != 'L'
                                            ? const Color(0XFF000000)
                                            : const Color(0XFFFFFFFF),
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 101,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0XFF000000).withOpacity(0.2)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 25,
                  right: 25,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Price',
                            style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.w500,
                              color: const Color(0XFF000000).withOpacity(0.6),
                            ),
                          ),
                          const Text(
                            'PKR 1,190',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color:  Color(0XFF000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return const MyCart();
                          }),
                        );
                      },
                      child: Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          width: 191,
                          height: 58,
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0XFF000000),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(
                                    'assets/images/cart.png',
                                    width: 22,
                                    height: 22,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'Add to Cart',
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
