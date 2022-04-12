import 'package:flutter/material.dart';
import 'package:testingui/Widget.dart';

class TabHost extends StatefulWidget {
  const TabHost({Key? key}) : super(key: key);

  @override
  _TabHostState createState() => _TabHostState();
}

int counter = 0;
final Number_controller = TextEditingController();

class _TabHostState extends State<TabHost> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
            ),
            title: customtext2('Tab Host'),
          ),
          body: TabBarView(
            children: [
              Tab1(),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }

  Widget Tab1() {
    return Center(
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
                        leading: CircleAvatar(child: Icon(Icons.person)),
                        subtitle: customtext3("$index \nHello World"),
                        trailing: Icon(Icons.arrow_forward_ios),
                      )),
                );
              }),
        )
      ]),
    );
  }
}
