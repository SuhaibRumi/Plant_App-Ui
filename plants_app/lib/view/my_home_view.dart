import 'package:flutter/material.dart';
import 'package:plants_app/view/cart_view.dart';
import 'package:plants_app/view/shipping_view.dart';

import 'home_view.dart';

class MyHomeView extends StatefulWidget {
  const MyHomeView({Key? key}) : super(key: key);

  @override
  State<MyHomeView> createState() => _MyHomeViewState();
}

class _MyHomeViewState extends State<MyHomeView> {
  final pages = [
    const HomeView(),
    const CartPage(),
    const ShippingPage(),
    const CartPage(),
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: pages[index],
        bottomNavigationBar: Container(
          margin: const EdgeInsets.all(5),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              fixedColor: Colors.yellow,
              unselectedItemColor: Colors.white,
              backgroundColor: const Color.fromARGB(255, 50, 98, 52),
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home,
                    ),
                    label: "Home"),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.category_sharp,
                  ),
                  label: "Catagory",
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_bag), label: "Buy"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), label: "Account"),
              ],
              currentIndex: index,
              onTap: (value) {
                setState(() {
                  index = value;
                });
              },
            ),
          ),
        ));
  }
}
