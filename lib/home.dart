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
            dishSection()
          ],
        ),
      ),
    );
  }

  SizedBox dishSection() {
    return SizedBox(
            height: 200,
            child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 2,
              crossAxisSpacing: 2,
              childAspectRatio: 1,
              scrollDirection: Axis.horizontal,
              children: [
                DishCard("assets/dish1.png","Name"),
                DishCard("assets/dish2.png","Name"),
                DishCard("assets/dish3.png","Name"),
                DishCard("assets/dish4.png","Name"),
                DishCard("assets/dish5.png","Name"),
                DishCard("assets/dish6.png","Name"),
                DishCard("assets/dish7.png","Name"),
                DishCard("assets/dish8.png","Name"),
              ],
            ),
          );
  }

  GridTile DishCard(String _dishImg,String _dishName) {
    return GridTile(
                child: ClipRRect(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(_dishImg),
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                footer: Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Text(
                    _dishName,
                    textAlign: TextAlign.center,
                  ),
                ),
              );
  }

  Widget FoodOrderSection() {
    return Container(
      height: 180,
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: GridView.count(
        physics: const NeverScrollableScrollPhysics(),
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

  Widget FoodScrollCards() {
    return SizedBox(
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
    );
  }

  Widget FoodCards(String CardImg) {
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

  Widget FoodCategoryBar() {
    return SizedBox(
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
