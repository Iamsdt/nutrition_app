import 'package:flutter/material.dart';
import 'package:nutrition_app/main/detailsPage.dart';
import 'package:oktoast/oktoast.dart';

class FoodItem extends StatefulWidget {
  final String imgPath;
  final String foodName;
  final String price;
  final String tag;

  FoodItem(this.imgPath, this.foodName, this.price, this.tag);

  @override
  _FoodItemState createState() => _FoodItemState(imgPath, foodName, price, tag);
}

class _FoodItemState extends State<FoodItem> {
  final String imgPath;
  final String foodName;
  final String price;
  final String tag;

  _FoodItemState(this.imgPath, this.foodName, this.price, this.tag);

  @override
  Widget build(BuildContext context) {
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
                    tag: tag,
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
                icon: Icon(Icons.add),
                color: Colors.black,
                onPressed: () {
                  Scaffold.of(context).showSnackBar(SnackBar(
                      content: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.add_shopping_cart),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            "Item added to the chart",
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  )));
                })
          ],
        ),
      ),
    );
  }
}
