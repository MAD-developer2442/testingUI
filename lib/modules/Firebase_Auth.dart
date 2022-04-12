import 'package:flutter/material.dart';
import 'package:testingui/Widget.dart';

class FirebaseAuthPage extends StatefulWidget {
  const FirebaseAuthPage({Key? key}) : super(key: key);

  @override
  _FirebaseAuthPage createState() => _FirebaseAuthPage();
}

class _FirebaseAuthPage extends State<FirebaseAuthPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
          title: customtext1("Firebase Push Notification"), centerTitle: true),
      body: Center(child:Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            child:
                ElevatedButton(onPressed: () {}, child: customtext2("Click")),
          )
        ],
      ),
    )));
  }
}
