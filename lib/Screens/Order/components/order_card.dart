import 'package:flutter/material.dart';
import 'package:kurirapp/constants.dart';

class OrderCard extends StatefulWidget {
  _OrderCardState createState() => _OrderCardState();
}

class _OrderCardState extends State<OrderCard> {
  int order = 0;

  @override
  void initState() {
    order = order + 1;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Card(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        children: <Widget>[
          Container(
            height: size.height * 9 / 100,
            width: size.width * 10 / 100,
            decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.grey[400]),
                borderRadius: BorderRadius.circular(8)),
            child: Column(
              children: <Widget>[
                InkWell(
                  onTap: () {
                    setState(() {
                      order = order + 1;
                    });
                  },
                  child: Icon(
                    Icons.keyboard_arrow_up,
                    color: Colors.grey[400],
                  ),
                ),
                Text(
                  "$order",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[400]),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      order = order - 1;
                      if (order < 0) {
                        order = 0;
                      }
                    });
                  },
                  child: Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.grey[400],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/lunch.jpeg"),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(100),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey, blurRadius: 5, offset: Offset(2, 2))
                ]),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text("Grilled Chicken"),
              SizedBox(height: 5.0),
              Text(
                "3.0",
                style: TextStyle(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              SizedBox(height: 5.0),
              Container(
                height: 25,
                width: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text("Chicken",
                            style: TextStyle(
                                color: kPrimaryLight,
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          width: 5.0,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            "x",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          Spacer(),
          GestureDetector(
            onTap: () {
              print("Close");
            },
            child: Icon(
              Icons.cancel,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    ));
  }
}
