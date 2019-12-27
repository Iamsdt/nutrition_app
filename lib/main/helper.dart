import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nutrition_app/main/detailsPage.dart';

Widget topBar() {
  return Padding(
    padding: EdgeInsets.only(top: 15.0, left: 10.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
//        IconButton(
//            icon: Icon(Icons.arrow_back_ios),
//            color: Colors.white,
//            onPressed: () {}),
        Container(
          width: 125.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.filter_list),
                color: Colors.white,
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.menu),
                color: Colors.white,
                onPressed: () {},
              )
            ],
          ),
        )
      ],
    ),
  );
}

Widget buildFoodItem(
    BuildContext context, String imgPath, String foodName, String price) {
  return Padding(
    padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
    child: InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetailsPage(
                heroTag: imgPath, foodName: foodName, foodPrice: price)));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                Hero(
                  tag: imgPath,
                  child: Image(
                    image: AssetImage(imgPath),
                    fit: BoxFit.cover,
                    height: 80.0,
                    width: 80.0,
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      foodName,
                      style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(price,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 15.0,
                            color: Colors.grey))
                  ],
                )
              ],
            ),
          ),
          IconButton(
              icon: Icon(Icons.add), color: Colors.black, onPressed: () {})
        ],
      ),
    ),
  );
}

Widget bottomBar() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Container(
        height: 42.0,
        width: 60.0,
        decoration: BoxDecoration(
            border: Border.all(
                color: Colors.grey, style: BorderStyle.solid, width: 1.0)),
        child: Center(
          child: Icon(
            Icons.search,
            color: Colors.black,
          ),
        ),
      ),
      Container(
        height: 42.0,
        width: 60.0,
        decoration: BoxDecoration(
          border: Border.all(
              color: Colors.grey, style: BorderStyle.solid, width: 1.0),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Center(
          child: Icon(Icons.shopping_basket, color: Colors.black),
        ),
      ),
      Container(
        height: 42.0,
        width: 120.0,
        decoration: BoxDecoration(
            border: Border.all(
                color: Colors.grey, style: BorderStyle.solid, width: 1.0),
            borderRadius: BorderRadius.circular(10.0),
            color: Color(0xFF1C1428)),
        child: Center(
            child: Text('Checkout',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                    fontSize: 15.0))),
      )
    ],
  );
}
