import "package:flutter/material.dart";

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Exploring UI widgets",
    home: Scaffold(
      appBar: AppBar(
        title: Text("Long list"),
      ),
      body: getListView(),
    ),
  ));
}

List<String> getListElement() {
  var items = List<String>.generate(1000, (counter) => "Item $counter");
  return items;
}

Widget getListView() {
  var listItems = getListElement();

  var listView = ListView.builder(itemBuilder: (contex, index) {
    return ListTile(
      leading: Icon(Icons.adjust),
      title: Text(listItems[index]),
      onTap: (){
        debugPrint("clicked on ${listItems[index]}");
      },
    );
  });

  return listView;
}
