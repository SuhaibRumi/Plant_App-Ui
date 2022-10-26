import 'package:flutter/material.dart';

class IndoorPage extends StatelessWidget {
  const IndoorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      height: 250,
      width: MediaQuery.of(context).size.width / 2.2,
      decoration: BoxDecoration(
          color: Colors.white70, borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children:<Widget> [
          Container(
            height: 105,
            width: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image:
                    const DecorationImage(image: AssetImage("assets/4.png"))),
          ),
          const Divider(
            indent: 15,
            endIndent: 15,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(
              "cactus ",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const <Widget>[
                Text(
                  "Indoors",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                Text(
                  "\$518.08",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
