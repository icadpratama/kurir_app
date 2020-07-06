import 'package:flutter/material.dart';
import 'package:kurirapp/constants.dart';
import 'small_floating_button.dart';

List<Food> foodList = [
  Food(name: "Cereals", image: "1.jpg", price: 20000),
  Food(name: "Massala", image: "3.jpg", price: 20000),
  Food(name: "Taccos", image: "5.jpg", price: 30000),
  Food(name: "Cereals", image: "1.jpg", price: 90000),
];

class Food {
  final String name;
  final String image;
  final int price;

  Food({this.name, this.image, this.price});
}

class NearYou extends StatefulWidget {
  @override
  _NearYouState createState() => _NearYouState();
}

class _NearYouState extends State<NearYou> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: foodList.length,
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: <Widget>[
                  Container(
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey[300],
                              offset: Offset(1, 1),
                              blurRadius: 0)
                        ]),
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          "images/${foodList[index].image}",
                          width: 140,
                          height: 140,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                foodList[index].name,
                                style: TextStyle(fontWeight: FontWeight.w800),
                              ),
                            ),
                            SmallButton(Icons.favorite),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    "4.5",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12),
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: kPrimaryRed,
                                    size: 14,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: kPrimaryRed,
                                    size: 14,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: kPrimaryRed,
                                    size: 14,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: kPrimaryRed,
                                    size: 14,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.grey,
                                    size: 14,
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    "(298)",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "${foodList[index].price}",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
