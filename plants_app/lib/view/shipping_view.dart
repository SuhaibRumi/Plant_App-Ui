import 'package:flutter/material.dart';
import 'package:plants_app/widgets/widgets.dart';

import 'view.dart';

class ShippingPage extends StatelessWidget {
  const ShippingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              splashRadius: 20,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const MyHomeView()));
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.grey,
              )),
          backgroundColor: Colors.white70,
          elevation: 0,
          actions: [
            IconButton(
                splashRadius: 20,
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_bag,
                  color: Colors.grey,
                )),
          ]),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(
              "Shipping to",
              textScaleFactor: 1.5,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.all(10),
            height: 100,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    IconButton(
                      splashRadius: 20,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.radio_button_checked_outlined,
                        color: Colors.green,
                      ),
                    ),
                    const Text(
                      " Home",
                      style: TextStyle(fontSize: 17),
                    ),
                    const SizedBox(
                      width: 200,
                    ),
                    IconButton(
                      splashRadius: 20,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.edit,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("(021)323450"),
                    SizedBox(height: 10),
                    Text("Teleghani Steet,Teleghani Crossrod Alavi Dead End"),
                  ],
                )
              ],
            ),
          ),
          const ShippingBox(),
          const Divider(
            indent: 15,
            endIndent: 15,
            thickness: 1.2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  "Payment Method",
                  textScaleFactor: 1.5,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              IconButton(
                  splashRadius: 20,
                  onPressed: () {},
                  icon: const Icon(Icons.add)),
            ],
          )
        ],
      ),
    );
  }
}
