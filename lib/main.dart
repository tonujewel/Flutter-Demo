import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Stateful App Widget",
    home: FavoriteCity(),
  ));
}

class FavoriteCity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FavoriteCityState();
  }
}

class _FavoriteCityState extends State<FavoriteCity> {
  String nameCity = "";
  var _currencies = ['TK', 'Dollar', 'Pounds', 'Others'];
  var _currentSelectedItem = 'dollar';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful App Example"),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                  labelText: "Your City Name",
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.blue, width: 2.0),
                      borderRadius: BorderRadius.circular(25.0))),
              onChanged: (String userInput) {
                setState(() {
                  nameCity = userInput;
                });
              },
            ),
            DropdownButton<String>(
              items: _currencies.map((String dropStringItem) {
                return DropdownMenuItem<String>(
                  value: dropStringItem,
                  child: Text(dropStringItem),
                );
              }).toList(),
              onChanged: (String newValueSelected) {
                setState(() {
                  this._currentSelectedItem = newValueSelected;
                });
              },

            ),
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Text(
                "Your Best City Is: $nameCity ",
                style: TextStyle(fontSize: 20.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}
