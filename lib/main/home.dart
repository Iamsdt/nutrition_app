import 'package:flutter/material.dart';
import 'package:nutrition_app/main/helper.dart';
import 'package:nutrition_app/main/food_item.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF21BfBD),
      body: ListView(
        children: <Widget>[
          topBar(context),
          SizedBox(
            height: 25.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: Row(
              children: <Widget>[
                Text("Healthy",
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0)),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "Food",
                  style: TextStyle(
                      fontFamily: "Montserrat",
                      color: Colors.white,
                      fontSize: 25.0),
                )
              ],
            ),
          ),
          SizedBox(
            height: 40.0,
          ),
          Container(
            height: MediaQuery.of(context).size.height - 185.0,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.only(topLeft: Radius.circular(45.0))),
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(left: 25.0, right: 20.0),
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 45.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height - 300.0,
                    child: ListView(
                      children: <Widget>[
                        FoodItem(
                            'assets/plate1.png', 'Salmon bowl', '\$24.00', "1"),
                        FoodItem(
                            'assets/plate2.png', 'Spring bowl', '\$22.00', "2"),
                        FoodItem('assets/plate6.png', 'Avocado bowl', '\$26.00',
                            "3"),
                        FoodItem(
                            'assets/plate5.png', 'Berry bowl', '\$24.00', "4"),
                        FoodItem(
                            'assets/plate1.png', 'Salmon bowl', '\$24.00', "5"),
                        FoodItem(
                            'assets/plate2.png', 'Spring bowl', '\$22.00', "6"),
                        FoodItem('assets/plate6.png', 'Avocado bowl', '\$26.00',
                            "7"),
                        FoodItem(
                            'assets/plate5.png', 'Berry bowl', '\$24.00', "8"),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: bottomBar(context),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
