import 'package:flutter/material.dart';
import 'package:plants_app/view/my_home_view.dart';
import '../widgets/widgets.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white70,
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
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_border_outlined,
                color: Colors.grey,
              ),
              splashRadius: 20,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Column(
              children: [
                Container(
                  height: 350,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      // color: Colors.red,
                      image:
                          DecorationImage(image: AssetImage("assets/3.png"))),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "Alover",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  " Dolore sadipscing tempor et et. Sed sanctus erat gubergren consetetur labore temporpIpsum diam dolor ut diam dolores takimata ut. Dolore sadipscing tempor.",
                  textAlign: TextAlign.center,

                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[600],
                  ),
                  // textAlign: TextAlign.end,
                ),
                const SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                    onPressed: () async {
                      await _showModalBottomSheet(context);
                    },
                    child: const Text("Read More"))
              ],
            ),
            Positioned(
              left: 10,
              top: 8,
              child: Column(
                children: const <Widget>[
                  BoxWidgets(),
                  SizedBox(height: 8),
                  BoxWidgets(),
                  SizedBox(height: 8),
                  BoxWidgets(),
                  SizedBox(height: 8),
                  BoxWidgets(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

_showModalBottomSheet(BuildContext context) async {
  return await showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) {
        return Container(
          width: MediaQuery.of(context).size.width,
          height: 400,
          decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 30, right: 5),
                child: Row(
                  children: const <Widget>[
                    CustomWigdet(),
                    SizedBox(
                      width: 20,
                    ),
                    CustomWigdet(),
                    SizedBox(
                      width: 20,
                    ),
                    CustomWigdet(),
                    SizedBox(
                      width: 20,
                    ),
                    CustomWigdet(),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: const <Widget>[
                  Text(
                    "Zamioculcas ",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Icon(
                    Icons.remove,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "1",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ],
              ),
              const Text(
                "\$18.67",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                " Dolore sadipscing tempor et et. Sed sanctus erat gubergren consetetur labore temporpIpsum diam dolor ut diam dolores takimata ut. Dolore sadipscing tempor et et. Sed sanctus erat gubergren consetetur labore temporpIpsum diam dolor ut diam dolores takimata ut. Dolore sadipscing tempor et et. Sed sanctus  ",
                textAlign: TextAlign.center,

                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[600],
                ),
                // textAlign: TextAlign.end,
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)))),
                    onPressed: () {},
                    child: const Text("Add to Cart")),
              )
            ],
          ),
        );
      });
}
