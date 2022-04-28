import 'package:flutter/material.dart';
import 'package:testingui/Widget.dart';
import 'package:testingui/modules-designs/Valorant/Valorant-Page-Design.dart';

List<String> images = [
  "images/Games/Valorant.png",
  "images/Games/CounterStrike.jpg",
  "images/Games/Apex.png",
  "images/Games/RL.png",
  "images/Games/CR.jpg",
  "images/Games/COC.png",
  "images/Games/Pubg.png",
];

class GamePage extends StatefulWidget {
  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Valorant'),
      ),
      body: GridView.count(
          crossAxisCount: 3,
          shrinkWrap: true,
          clipBehavior: Clip.antiAlias,
          children: [
            customgamelisttile(Colors.black, images[0], () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ValorantPageDesign()));
            }),
            customgamelisttile(Colors.black, images[1], () {}),
            customgamelisttile(Colors.black, images[2], () {}),
            customgamelisttile(Colors.black, images[3], () {}),
            customgamelisttile(Colors.black, images[4], () {}),
            customgamelisttile(Colors.black, images[5], () {}),
            customgamelisttile(Colors.black, images[6], () {}),
          ]),
    );
  }
}
