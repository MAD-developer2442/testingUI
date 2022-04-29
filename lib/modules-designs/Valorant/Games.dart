import 'package:flutter/material.dart';
import 'package:testingui/Widget.dart';
import 'package:testingui/modules-designs/Valorant/Valorant-Page-Design.dart';

List<String> images = [
  "images/Games/Valo.png",
  "images/Games/csgo.png",
  "images/Games/apex.png",
  "images/Games/rocket.png",
  "images/Games/clash royal.png",
  "images/Games/coc.png",
  "images/Games/pubg.png",
  "images/Games/lol.png",
];

class GamePage extends StatefulWidget {
  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // appBar: AppBar(
      //   backgroundColor: Colors.black,
      //   title: Text('Choose a Game'),
      // ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Space(),
            Space(),
            customtitle("CHOOSE YOUR GAME"),
            GridGames()
          ],
        ),
      ),
    );
  }

  Widget GridGames() {
    return GridView.count(
        physics: const BouncingScrollPhysics(),
        crossAxisCount: 2,
        shrinkWrap: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        children: [
          customgamelisttile(Colors.white, images[0], () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ValorantPageDesign()));
          }),
          customgamelisttile(CardColor[1], images[1], () {}),
          customgamelisttile(Colors.black, images[2], () {}),
          customgamelisttile(Colors.black, images[3], () {}),
          customgamelisttile(Colors.black, images[4], () {}),
          customgamelisttile(Colors.black, images[5], () {}),
          customgamelisttile(Colors.black, images[6], () {}),
          customgamelisttile(Colors.black, images[7], () {}),
        ]);
  }
}
