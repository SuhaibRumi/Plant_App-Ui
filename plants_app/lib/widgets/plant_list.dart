import 'package:flutter/material.dart';

class PlantList extends StatelessWidget {
  const PlantList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      // color: Colors.red,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return SizedBox(
              // height: 150,
              width: MediaQuery.of(context).size.width / 1.2,
              child: Stack(
                children: [
                  Positioned(
                    bottom: 40,
                    left: 15,
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      padding: const EdgeInsets.all(5),
                      // height: 90,
                      width: MediaQuery.of(context).size.width / 1.3,
                      decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              width: 80,
                            ),
                            SizedBox(
                              width: (MediaQuery.of(context).size.width / 1.3) -
                                  95,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text(
                                        "Haworthia succulent",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Icon(
                                        Icons.favorite_border_rounded,
                                        color: Colors.grey,
                                        size: 25,
                                      ),
                                    ],
                                  ),
                                  const Text("Indoor"),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      TextButton(
                                          onPressed: () {},
                                          child: const Text(
                                            "\$ 23",
                                            style: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.bold),
                                          ))
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    bottom: 60,
                    left: 0,
                    child: Image.asset(
                      "assets/1.png",
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
