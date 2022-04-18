import 'package:flutter/material.dart';
import 'package:testingui/Module_Designs.dart';
import 'package:testingui/Module_Functions.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              margin: EdgeInsets.all(30),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ModuleFunctions()));
                },
                child: Image.asset('images/Functions.png'),
              ),
            ),
            Card(
              margin: EdgeInsets.all(30),
              child: InkWell(
                onTap: () {Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ModuleDesigns()));},
                child: Image.asset('images/Designs.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
