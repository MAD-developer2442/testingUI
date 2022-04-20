import 'package:flutter/material.dart';
import 'package:testingui/Widget.dart';
import 'package:testingui/modules-designs/Home-Page.dart';

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
                title: customtext2("Home Page Designs"),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => HomePageDesign()));
                },
              ),
            ),

            Card(
              color: Colors.grey,
              child: ListTile(
                title: customtext2("Home Page Designs"),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => HomePageDesign()));
                },
              ),
            ),
          ],
        )),
      ),
    );
  }
}
