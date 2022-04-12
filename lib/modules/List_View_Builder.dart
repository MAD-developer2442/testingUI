import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testingui/Widget.dart';

final Number_controller = TextEditingController();

class listViewBuilder extends StatefulWidget {
  @override
  _listViewBuilder createState() => _listViewBuilder();
}

int counter = 0;

class _listViewBuilder extends State<listViewBuilder> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: customtext1("ListView"),
          ),
          body: Center(
            child: Column(children: [
              TextField(
                controller: Number_controller,
                keyboardType: TextInputType.number,
                onSubmitted: (value) {
                  setState(() {
                    int x = int.parse(Number_controller.text);
                    print(x);
                    counter = x;
                  });
                },
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: counter,
                    itemBuilder: (context, index) {
                      return Card(
                        child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: ListTile(
                              title: customtext1("Settings"),
                              trailing: Icon(Icons.settings_rounded),
                            )),
                      );
                    }),
              )
            ]),
          )),
    );
  }
}
