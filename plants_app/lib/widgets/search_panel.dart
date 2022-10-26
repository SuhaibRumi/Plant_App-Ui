import 'package:flutter/material.dart';

class SearchPanel extends StatelessWidget {
  const SearchPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: MediaQuery.of(context).size.width,
      // color: Colors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: MediaQuery.of(context).size.width - 80,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: const TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search'),
            ),
          ),
          SizedBox(
            width: 45,
            height: 45,
            child: Material(
              color: Colors.green,
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                onTap: () {},
                child: const Icon(
                  Icons.tune,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
