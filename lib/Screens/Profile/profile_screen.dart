import 'package:flutter/material.dart';
import 'package:kurirapp/components/rounded_button.dart';
import 'package:kurirapp/components/small_button.dart';
import 'package:kurirapp/constants.dart';
import 'package:kurirapp/components/custom_list_title.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool turnOnNotification = false;
  bool turnOnLocation = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Profile",
                style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 120.0,
                    width: 120.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60.0),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 3.0,
                            offset: Offset(0, 4.0),
                            color: Colors.black38),
                      ],
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/images/profile-min.jpg",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Irsyad Jamal Pratama Putra",
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "+6281517454793",
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      SmallButton(btnText: "Edit"),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                "Account",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Card(
                elevation: 3.0,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      CustomListTile(
                        icon: Icons.location_on,
                        text: "Location",
                      ),
                      Divider(
                        height: 10.0,
                        color: kBackgroundColor,
                      ),
                      CustomListTile(
                        icon: Icons.visibility,
                        text: "Change Password",
                      ),
                      Divider(
                        height: 10.0,
                        color: kBackgroundColor,
                      ),
                      CustomListTile(
                        icon: Icons.shopping_cart,
                        text: "Shipping",
                      ),
                      Divider(
                        height: 10.0,
                        color: kBackgroundColor,
                      ),
                      CustomListTile(
                        icon: Icons.payment,
                        text: "Payment",
                      ),
                      Divider(
                        height: 10.0,
                        color: kBackgroundColor,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                "Notifications",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Card(
                elevation: 3.0,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "App Notification",
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                          Switch(
                            value: turnOnNotification,
                            activeColor: kPrimaryColor,
                            onChanged: (bool value) {
                              setState(() {
                                turnOnNotification = value;
                              });
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Location Tracking",
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                          Switch(
                            value: turnOnLocation,
                            activeColor: kPrimaryColor,
                            onChanged: (bool value) {
                              setState(() {
                                turnOnLocation = value;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                "Other",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Language", style: TextStyle(fontSize: 16.0)),
                        SizedBox(
                          height: 10.0,
                        ),
                        Divider(
                          height: 30.0,
                          color: kBackgroundColor,
                        ),
                        Text("Currency", style: TextStyle(fontSize: 16.0)),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                // mainAxisAlignment: MainAxisAlignment.center,
                padding: EdgeInsets.only(left: 20, top: 10),
                child: RoundedButton(
                  text: "LOG OUT",
                  textColor: Colors.white,
                  borderColor: kPrimaryColor,
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          // return LoginScreen();
                        },
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
