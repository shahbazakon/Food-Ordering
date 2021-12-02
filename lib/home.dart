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
            leading: Icon(Icons.location_on_outlined,size: 35,color: Colors.redAccent,),
            title: Text("Home",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.redAccent,fontSize: 18),),
            subtitle: Text("#1252 burial, near quills,Sector 45 ,Chandigarh"),
            trailing: CircleAvatar(
              backgroundImage: AssetImage('assets/ProfilePick.jpg'),
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
                DishCard("assets/dish1.png","Fajitas"),
                DishCard("assets/dish2.png","Hamburger"),
                DishCard("assets/dish3.png","Galbi"),
                DishCard("assets/dish4.png","Bibimbap"),
                DishCard("assets/dish6.png","Potato chips"),
                DishCard("assets/dish5.png","Masala dosa"),
                DishCard("assets/dish7.png","Moo nam tok"),
                DishCard("assets/dish8.png","Neapolitan"),
                DishCard("assets/dish1.png","Fajitas"),
                DishCard("assets/dish2.png","Hamburger"),
                DishCard("assets/dish3.png","Galbi"),
                DishCard("assets/dish4.png","Bibimbap"),
                DishCard("assets/dish5.png","Masala dosa"),
                DishCard("assets/dish7.png","Moo nam tok"),
                DishCard("assets/dish8.png","Neapolitan"),
                DishCard("assets/dish6.png","Potato chips"),
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
          FoodOrderCard("assets/FoodTemplate2.jpg", "Raju Chinese Festival",
              "43 mins", "30% OFF UpTo Rs.40"),
          FoodOrderCard("assets/FoodTemplate3.jpeg", "Food Points   ", "21 mins",
              "20% OFF upto Rs.50"),
          FoodOrderCard("assets/FoodTemplate4.webp", "Word Food Center", "21 mins",
              "20% OFF upto Rs.50"),
          FoodOrderCard("assets/FoodTemplate5.jpg", "Food Corner   ", "21 mins",
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
              borderRadius: BorderRadius.circular(6),
            ),
            padding: EdgeInsets.all(8),
            height: 75,
            width: 75,
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Column(
                children: [
                  Text(
                    OrderName,
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.timer_rounded,
                        size: 14,
                        color: Colors.green,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text(OrderTime,textAlign: TextAlign.left,style: const TextStyle(fontSize: 14),),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Text(OdderOffer,textAlign: TextAlign.left,style: const TextStyle(color: Colors.blue,fontSize: 11)),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  ListTile FoodSection(String MainHeading, String SubHeading) {
    return ListTile(
      title: Text(MainHeading,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
      trailing: Text(SubHeading,style: TextStyle(color: Colors.redAccent),),
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
            FoodCategory("Pro"),
            FoodCategory("Fastest Delivery"),
            FoodCategory("Pure Veg"),
            FoodCategory("Rating"),
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
        style: TextStyle(color: Colors.black54),
        textAlign: TextAlign.center,
      ),
      margin: const EdgeInsets.all(4),
      padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(
              1.0,
              1.0,
            ),
            blurRadius: 4.0,
            spreadRadius: 1.0,
          ), //BoxShadow
          BoxShadow(
            color: Colors.white,
            offset: Offset(0.0, 0.0),
            blurRadius: 0.0,
            spreadRadius: 0.0,
          ), //BoxShadow
        ],
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      )


    );
  }
}
