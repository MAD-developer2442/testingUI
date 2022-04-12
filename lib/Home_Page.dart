import 'package:flutter/material.dart';
import 'package:testingui/Widget.dart';
import 'package:testingui/modules/Date-Time-Picker.dart';
import 'package:testingui/modules/Get-data.dart';
import 'package:testingui/modules/Grid_View.dart';
import 'package:testingui/modules/Image_Picker.dart';
import 'package:testingui/modules/List_View.dart';
import 'package:testingui/modules/List_View_Builder.dart';
import 'package:testingui/modules/Web_View.dart';

class homePage extends StatelessWidget {
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
          children: [
            Card(
              color: Colors.grey,
              child: ListTile(
                title: customtext2("Get-Signup"),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => getData()));
                },
              ),
            ),
            Card(
              color: Colors.grey,
              child: ListTile(
                title: customtext2("ImagePicker"),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ImagePciker()));
                },
              ),
            ),
            Card(
              color: Colors.grey,
              child: ListTile(
                title: customtext2("Date-TimePicker"),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => dateTimePicker()));
                },
              ),
            ),
            Card(
              color: Colors.grey,
              child: ListTile(
                title: customtext2("ListView"),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => listView()));
                },
              ),
            ),
            Card(
              color: Colors.grey,
              child: ListTile(
                title: customtext2("GridView"),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => gridView()));
                },
              ),
            ),
            Card(
              color: Colors.grey,
              child: ListTile(
                title: customtext2("Listview Builder"),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => listViewBuilder()));
                },
              ),
            ),
            Card(
              color: Colors.grey,
              child: ListTile(
                title: customtext2("Webview"),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => webView()));
                },
              ),
            )
          ],
        )),
      ),
    );
  }
}
