import 'package:flutter/material.dart';

class Checkout extends StatefulWidget {
  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Text(
          "DELIVERY",
          style: TextStyle(
              color: Colors.black,
              fontFamily: 'Montserrat',
              fontSize: 20.0,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: <Widget>[
          Icon(
            Icons.more_vert,
            color: Colors.black,
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height / 1.8,
            color: Colors.black,
          ),
          Container(
            height: MediaQuery.of(context).size.height -
                MediaQuery.of(context).size.height / 1.8,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [Colors.blue, Colors.lightBlue])),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top:50.0),
                  child: MaterialButton(
                    onPressed: () {},
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text("Checkout", style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.blue
                      ),),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(5.0),
                        side: BorderSide(color: Colors.white,
                        width: 2)
                    ),
                    padding: EdgeInsets.only(left: 100.0, right: 100.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:30.0),
                  child: MaterialButton(
                    onPressed: () {},
                    color: Colors.blue,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text("Edit your order", style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.white
                      ),),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(5.0),
                        side: BorderSide(color: Colors.white,
                            width: 2)
                    ),
                    padding: EdgeInsets.only(left: 80.0, right: 80.0),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
