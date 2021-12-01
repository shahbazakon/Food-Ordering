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
        color: Colors.black38.withAlpha(10),
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Row(
        children: <Widget>[
          Icon(
            Icons.search,
            color: Colors.black.withAlpha(120),
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
