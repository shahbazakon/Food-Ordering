import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

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
            )
        ),
        bottomNavigationBar: BottomNavigationBar(
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
        ),
      body: Column(
        children: [
      Container(
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
    ),
        ],
      ),


    );
  }
}
