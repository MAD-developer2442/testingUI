import 'package:flutter/material.dart';
import 'package:testingui/Widget.dart';

List<Icon> productList = [
  Icon(Icons.calendar_today),
  Icon(Icons.calendar_today),
  Icon(Icons.calendar_today),
  Icon(Icons.calendar_today),
  Icon(Icons.calendar_today),
];
List<String> productName = [
  "Apple",
  "Apple",
  "Apple",
  "Apple",
  "Apple",
];

class listViewBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: customtext1("ListView"),
      ),
      body: Center(
        child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return Card(
                child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: ListTile(
                      title: Text(productName[index]),
                      trailing: productList[index],
                    )),
              );
            }),
      ),
    ));
  }
}
