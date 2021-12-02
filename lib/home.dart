import 'package:flutter/cupertino.dart';
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const FoodSearchBar(),
            FoodCategoryBar(),
            FoodScrollCards(),
            FoodSection("Order Again", "View History"),
            FoodOrderSection(),
            FoodSection("Eat What Make You Happy", ""),
            GridView.count(
              crossAxisCount: 4,
              mainAxisSpacing: 2,
              crossAxisSpacing: 2,
              scrollDirection: Axis.horizontal,
              children: [
            Container(
              color: Colors.deepOrange,
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.deepPurple,
            ),
            Container(
              color: Colors.pink,
            ),
            Container(
              color: Colors.brown,
            ),
            Container(
              color: Colors.black38,
            ),
            Container(
              color: Colors.lime,
            ),
            Container(
              color: Colors.cyanAccent,
            ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Flexible FoodOrderSection() {
    return Flexible(
      flex: 2,
      child: Container(
        height: 180,
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 2,
          mainAxisSpacing: 2,
          childAspectRatio: 1 / .5,
          children: [
            FoodOrderCard("assets/FoodOfferCard4.jpg", "Raju Chinese Festival",
                "43 mins", "30% OFF UpTo Rs.40"),
            FoodOrderCard("assets/FoodOfferCard3.jpg", "Subway", "21 mins",
                "20% OFF upto Rs.50"),
            FoodOrderCard("assets/FoodOfferCard2.jpg", "Subway", "21 mins",
                "20% OFF upto Rs.50"),
            FoodOrderCard("assets/FoodOfferCard1.jpg", "Subway", "21 mins",
                "20% OFF upto Rs.50"),
          ],
        ),
      ),
    );
  }

  Container FoodOrderCard(
      String OrderImg, String OrderName, String OrderTime, String OdderOffer) {
    return Container(
      child: Row(
        children: [
          Container(
            child: ClipRRect(
              child: Image.asset(
                OrderImg,
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            padding: EdgeInsets.all(4),
            height: 75,
            width: 75,
          ),
          Flexible(
            child: Column(
              children: [
                Text(
                  OrderName,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 12),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.timer_rounded,
                      size: 14,
                      color: Colors.green,
                    ),
                    Text(OrderTime),
                  ],
                ),
                Text(OdderOffer),
              ],
            ),
          )
        ],
      ),
    );
  }

  ListTile FoodSection(String MainHeading, String SubHeading) {
    return ListTile(
      title: Text(MainHeading),
      trailing: Text(SubHeading),
    );
  }

  Flexible FoodScrollCards() {
    return Flexible(
      child: SizedBox(
        height: 150,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            FoodCards("assets/FoodOfferCard4.jpg"),
            FoodCards("assets/FoodOfferCard3.jpg"),
            FoodCards("assets/FoodOfferCard2.jpg"),
            FoodCards("assets/FoodOfferCard1.jpg"),
          ],
        ),
      ),
    );
  }

  Container FoodCards(String CardImg) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      margin: EdgeInsets.symmetric(horizontal: 1, vertical: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          CardImg,
          fit: BoxFit.cover,
        ),
      ),
      width: 200,
    );
  }

  Flexible FoodCategoryBar() {
    return Flexible(
      // flex: 2,
      child: SizedBox(
        height: 40,
        child: Padding(
          padding: EdgeInsets.only(left: 10),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              FoodCategory("Veg Food"),
              FoodCategory("Non-Veg Food"),
              FoodCategory("Fast Food"),
              FoodCategory("Healthy Food"),
            ],
          ),
        ),
      ),
    );
  }

  Container FoodCategory(String CategoryName) {
    return Container(
      child: Text(
        CategoryName,
        textAlign: TextAlign.center,
      ),
      margin: const EdgeInsets.all(4),
      padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 12),
      // width: 100,
      decoration: BoxDecoration(
        color: Colors.black12,
        border: Border.all(color: Colors.black38),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
