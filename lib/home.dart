import 'package:flutter/material.dart';

import 'Widgets/navigationbar.dart';
import 'Widgets/searchbar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const ListTile(
            leading: Icon(Icons.location_on_outlined),
            title: Text("Home"),
            subtitle: Text("#1252 burail, near quilla,Sector 45 ,Chandigarh"),
            trailing: CircleAvatar(
              backgroundColor: Colors.brown,
            ),
          )),
      bottomNavigationBar: const FoodNavigationBar(),
      body: Column(
        children: [
          const FoodSearchBar(),
          Flexible(
              // flex: 2,
              child: SizedBox(
            height: 40,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                FoodCategory("Veg Food"),
                FoodCategory("Non-Veg Food"),
                FoodCategory("Fast Food"),
                FoodCategory("Healthy Food"),
              ],
            ),
          ))
        ],
      ),
    );
  }

  Container FoodCategory(String CategoryName) {
    return Container(
                  child:  Text(
                    CategoryName,
                    textAlign: TextAlign.center,
                  ),
                  margin: const EdgeInsets.all(4),
                  padding: const EdgeInsets.symmetric(vertical: 7,horizontal: 12),
                  // width: 100,
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      border: Border.all(color: Colors.black38),
                      borderRadius: BorderRadius.circular(20)));
  }
}
