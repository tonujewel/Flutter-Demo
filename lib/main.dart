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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint("Floating button clicked");
        },
        child: Icon(Icons.add),
        tooltip: "Add one more item",
      ),
    ),
  ));
}

void showSnackBar(BuildContext context, String item) {
  var snackBar = SnackBar(
    content: Text(
      "You tapped on $item",
      style: TextStyle(
          color: Colors.blue,
          fontFamily: 'Roboto',
          fontStyle: FontStyle.normal),
    ),
    action: SnackBarAction(
        label: "UNDO",
        onPressed: () {
          debugPrint("clicked on UNDO");
        }),
  );
  Scaffold.of(context).showSnackBar(snackBar);
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
      onTap: () {
        showSnackBar(contex, listItems[index]);
      },
    );
  });

  return listView;
}
