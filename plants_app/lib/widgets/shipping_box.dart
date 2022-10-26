import 'package:flutter/material.dart';

class ShippingBox extends StatelessWidget {
  const ShippingBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                splashRadius: 10,
                onPressed: () {},
                icon: const Icon(
                  Icons.radio_button_unchecked_outlined,
                  color: Colors.grey,
                ),
              ),
              const Text(
                " office",
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
    );
  }
}
