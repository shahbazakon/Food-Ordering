import 'package:flutter/material.dart';

class FoodNavigationBar extends StatelessWidget {
  const FoodNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      fixedColor: Colors.redAccent,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.pedal_bike_sharp),
              label: 'Delivery',
              tooltip: "Delivery"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fastfood_rounded ),
            label: 'Fast Food',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.food_bank_rounded),
            label: 'Pro',
          ),
        ]
    );
  }
}
