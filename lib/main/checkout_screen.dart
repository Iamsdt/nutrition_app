import 'package:flutter/material.dart';

class Checkout extends StatefulWidget {
  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[topbar(context)],
      ),
    );
  }

  Widget topbar(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30.0, left: 15.0, right: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          Text(
            "Checkout",
            style: TextStyle(
                color: Colors.blue,
                fontFamily: 'Montserrat',
                fontSize: 20.0,
                fontWeight: FontWeight.bold),
          ),
          Container(
              width: 32.0,
              height: 32.0,
              decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  image: new DecorationImage(
                      fit: BoxFit.fill,
                      image: new NetworkImage(
                          "https://weneedfun.com/wp-content/uploads/2015/09/Cute-baby-girl-pics-for-facebook-profile-1.jpg")))),
        ],
      ),
    );
  }
}
