import 'package:flutter/material.dart';


class FoodSearchBar extends StatelessWidget {
  const FoodSearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      padding: const EdgeInsets.symmetric( horizontal: 16),
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(
              2.0,
              2.0,
            ),
            blurRadius: 10.0,
            spreadRadius: 4.0,
          ), //BoxShadow
          BoxShadow(
            color: Colors.white,
            offset: Offset(0.0, 0.0),
            blurRadius: 0.0,
            spreadRadius: 0.0,
          ), //BoxShadow
        ],
        color: Colors.black38.withAlpha(10),
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Row(
        children: <Widget>[
          const Icon(
            Icons.search,
            color: Colors.redAccent,
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Restaurant name, cuisine, or a dish...",
                hintStyle: TextStyle(
                  color: Colors.black.withAlpha(120),
                ),
                border: InputBorder.none,
              ),
              onChanged: (String keyword) {},
            ),
          )

        ],
      ),
    );
  }
}
