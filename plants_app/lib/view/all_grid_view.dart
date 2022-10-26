import 'package:flutter/material.dart';

class GridItemPage extends StatelessWidget {
  const GridItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.all(8),
          height: 250,
          width: MediaQuery.of(context).size.width / 2.2,
          decoration: BoxDecoration(
              color: Colors.white70, borderRadius: BorderRadius.circular(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 105,
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        image: AssetImage("assets/9.png"))),
              ),
              const Divider(
                indent: 15,
                endIndent: 15,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  "Dieffenbachia ",
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
                      "Outdors",
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    Text(
                      "\$23.55",
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
        ),
        Positioned(
            top: 8,
            right: 8,
            child: IconButton(
                splashRadius: 20,
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_border,
                  color: Colors.grey,
                )))
      ],
    );
  }
}
