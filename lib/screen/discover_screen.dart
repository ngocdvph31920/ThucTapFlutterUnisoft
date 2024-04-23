import 'package:ecommerce_app/model/product.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/screen/details_screen.dart';
import 'package:ecommerce_app/screen/login_screen.dart';
import 'package:ecommerce_app/screen/my_cart_screen.dart';

class Discover extends StatefulWidget {
  const Discover({Key? key}) : super(key: key);

  @override
  State<Discover> createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  int selectedIndex = 0;
  List<String> listCategory = ['All', 'Men', 'Women', 'Kids'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
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
                const Text(
                  'Discover',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Expanded(child: Container()),
                SizedBox(
                  width: 24,
                  height: 24,
                  child: Image.asset('assets/images/iconnotification.png'),
                ),
              ],
            ),
            const SizedBox(height: 14),
            Row(
              children: [
                Container(
                  width: 289,
                  height: 53,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black12,
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: 'Search anything',
                      border: InputBorder.none,
                      isDense: true,
                      contentPadding: EdgeInsets.all(15),
                      hintStyle: TextStyle(fontSize: 18, color: Colors.black38),
                      prefixIcon: Icon(Icons.search_outlined, size: 27),
                    ),
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                Expanded(child: Container()),
                SizedBox(
                  width: 53,
                  height: 53,
                  child: Image.asset('assets/images/frame4.png'),
                ),
              ],
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 38,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: listCategory.length,
                itemBuilder: (BuildContext context, int index) {
                  final title = listCategory[index];
                  return Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          index == selectedIndex
                              ? Colors.black
                              : const Color(0XFFF2F2F2),
                        ),
                        minimumSize:
                            MaterialStateProperty.all<Size>(const Size(79, 38)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                      child: Text(
                        title,
                        style: TextStyle(
                          fontSize: 17,
                          color: index == selectedIndex
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 27),
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.zero,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3 / 4,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: listProductFake.length,
                itemBuilder: (BuildContext context, int index) {
                  final cart = listProductFake[index];

                  return _buildProductCard(
                    'assets/images/${cart.image}',
                    cart.title.toUpperCase(),
                    'PKR ${cart.price}',
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 90,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildNavBarItem(
              'assets/images/home1.png',
              'Home',
              () {},
            ),
            const SizedBox(width: 60),
            _buildNavBarItem('assets/images/heart.png', 'Saved', () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Details()),
              );
            }),
            const SizedBox(width: 60),
            _buildNavBarItem('assets/images/shopping.png', 'Cart', () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyCart()),
              );
            }),
            const SizedBox(width: 60),
            _buildNavBarItem(
              'assets/images/setting.png',
              'Settings',
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProductCard(String imagePath, String title, String price) {
    return SizedBox(
      width: 161,
      height: 240,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 161,
            height: 174,
            child: Image.asset(imagePath),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 3),
          Text(
            price,
            style: const TextStyle(
              fontSize: 11,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNavBarItem(String imagePath, String title, VoidCallback onTap) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: onTap,
          child: Image.asset(
            imagePath,
            width: 24,
            height: 24,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          title,
          style: const TextStyle(
            fontSize: 13,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
