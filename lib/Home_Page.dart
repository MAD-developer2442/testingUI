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
        title: const Text('Home Page'),
      ),
      body: Center(
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              elevation: 5,
              margin: const EdgeInsets.all(30),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ModuleFunctions()));
                },
                child: Image.asset('images/Functions.png'),
              ),
            ),
            Card(
              elevation: 5,
              margin: const EdgeInsets.all(30),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const ModuleDesigns()));
                },
                child: Image.asset('images/Designs.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
