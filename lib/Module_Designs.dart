import 'package:flutter/material.dart';
import 'package:testingui/Widget.dart';
import 'package:testingui/modules-designs/Valorant/Valorant-Page-Design.dart';
import 'package:testingui/modules-designs/Valorant/Intro-Page.dart';

class ModuleDesigns extends StatelessWidget {
  const ModuleDesigns({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: customtext1("Modules of Flutter"),
      ),
      body: SafeArea(
        child: Center(
            child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Card(
              color: Colors.grey,
              child: ListTile(
                title: customtext2("Aeroplane"),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => IntroPage()));
                },
              ),
            ),
            Card(
              color: Colors.grey,
              child: ListTile(
                title: customtext2("Home Page Designs"),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ValorantPageDesign()));
                },
              ),
            ),
          ],
        )),
      ),
    );
  }
}
