import 'dart:ui';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
          padding: EdgeInsets.only(left: 10.0, top: 40.0),
          alignment: Alignment.center,
          color: Colors.blueGrey,
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                      child: Text(
                    "Flight!",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 35.0,
                        fontFamily: 'Roboto',
                        fontStyle: FontStyle.normal,
                        color: Colors.white
                    ),
                  )),
                  Expanded(
                      child: Text(
                    "This is test flight for testing!",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 20.0,
                        fontFamily: 'Roboto',
                        fontStyle: FontStyle.normal,
                        color: Colors.white),
                  )),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                      child: Text(
                    "Flight!",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 35.0,
                        fontFamily: 'Roboto',
                        fontStyle: FontStyle.normal,
                        color: Colors.white
                    ),
                  )),
                  Expanded(
                      child: Text(
                    "This is second line!",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 20.0,
                        fontFamily: 'Roboto',
                        fontStyle: FontStyle.normal,
                        color: Colors.white
                    ),
                  )),
                ],
              ),
              FlightImageAsset(),
              FlightBookButton()
            ],
          )),
    );
  }
}

class FlightImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/flight.png');
    Image image = Image(
      image: assetImage,
      width: 250.0,
      height: 250.0,
    );
    return Container(
      child: image,
    );
  }
}

class FlightBookButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250.0,
      height: 50.0,
      margin: EdgeInsets.only(top: 30.0),
      child: RaisedButton(
        color: Colors.blue,
        child: Text(
          "Book your flight !",
          style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w700),
        ),
        elevation: 6.0,
        onPressed: () => bookFlight(context),
      ),
    );
  }

  void bookFlight(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text("Flight Booked Successfully"),
      content: Text("Have a pleasant flight"),
    );

    showDialog(context: context, builder: (BuildContext contex) => alertDialog);
  }
}
