import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nutrition_app/main/detailsPage.dart';
import 'package:oktoast/oktoast.dart';

Widget topBar(BuildContext context) {
  return Padding(
    padding: EdgeInsets.only(top: 15.0, left: 10.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
//        IconButton(
//            icon: Icon(Icons.menu),
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
                onPressed: () {
                  showChart(context);
                },
              ),
              IconButton(
                icon: Icon(Icons.help_outline),
                color: Colors.white,
                onPressed: () {
                  showHelp(context);
                },
              )
            ],
          ),
        )
      ],
    ),
  );
}

void showHelp(BuildContext context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Container(
            child: Wrap(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      FlutterLogo(
                        size: 32.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          "Food App",
                          style: TextStyle(
                              fontSize: 28.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.cyan),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0, left: 5.0),
                    child: Text(
                      "This Food app entrily made with flutter.",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  )
                ],
              ),
            ),
          ],
        ));
      });
}

void showChart(BuildContext context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext ctx) {
        return Container(
          padding: EdgeInsets.only(top: 30.0, left: 16.0),
          child: Wrap(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Image(
                              image: AssetImage("assets/plate1.png"),
                              width: 75.0,
                              height: 75.0,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 16.0),
                                  child: Text(
                                    "Salmon bowl",
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Montserrat",
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 16.0),
                                  child: Text(
                                    "Quantity: 2",
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontFamily: "Montserrat",
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0, right: 30.0),
                        child: Text(
                          "\$24.00",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontFamily: "Montserrat",
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 30.0),
                    child: Text(
                      "Total \$24.00",
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Montserrat",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                ],
              ),
            ],
          ),
        );
      });
}

Widget bottomBar(BuildContext context) {
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
          child: IconButton(
            icon: Icon(Icons.shopping_basket, color: Colors.black),
            onPressed: () {
              showChart(context);
            },
          ),
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
