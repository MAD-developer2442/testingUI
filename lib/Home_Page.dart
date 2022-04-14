import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:testingui/Widget.dart';
import 'package:testingui/modules/Camera_callibration.dart';
import 'package:testingui/modules/Date-Time-Picker.dart';
import 'package:testingui/modules/Firebase_Auth.dart';
import 'package:testingui/modules/Get-data.dart';
import 'package:testingui/modules/Grid_View.dart';
import 'package:testingui/modules/Image_Picker.dart';
import 'package:testingui/modules/List_View.dart';
import 'package:testingui/modules/List_View_Builder.dart';
import 'package:testingui/modules/Notification.dart';
import 'package:testingui/modules/Set_State.dart';
import 'package:testingui/modules/Tab_Host.dart';
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
          physics: BouncingScrollPhysics(),
          children: [
            Card(
              color: Colors.grey,
              child: ListTile(
                title: customtext2("Get-Signup"),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => GetData()));
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
                      builder: (context) => DateTimePickerPage()));
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
                      MaterialPageRoute(builder: (context) => GridViewPage()));
                },
              ),
            ),
            Card(
              color: Colors.grey,
              child: ListTile(
                title: customtext2("Listview Builder"),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => listViewBuilderPage()));
                },
              ),
            ),
            Card(
              color: Colors.grey,
              child: ListTile(
                title: customtext2("Webview"),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => WebViewPage()));
                },
              ),
            ),
            Card(
              color: Colors.grey,
              child: ListTile(
                title: customtext2("Firebase Auth- Push Notification"),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => FirebaseAuthPage()));
                },
              ),
            ),
            Card(
              color: Colors.grey,
              child: ListTile(
                title: customtext2("TabHost"),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => TabHost()));
                },
              ),
            ),
            Card(
              color: Colors.grey,
              child: ListTile(
                title: customtext2("Notification"),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => NotificationPage()));
                },
              ),
            ),
            Card(
              color: Colors.grey,
              child: ListTile(
                title: customtext2("Set State"),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SetStatePage()));
                },
              ),
            ),
            Card(
              color: Colors.grey,
              child: ListTile(
                title: customtext2("Camera"),
                onTap: () async {
                  WidgetsFlutterBinding.ensureInitialized();
                  // Obtain a list of the available cameras on the device.
                  final cameras = await availableCameras();
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => CameraScreen(cameras: cameras)));
                },
              ),
            ),
            Card(
              color: Colors.grey,
              child: ListTile(
                title: customtext2("Set State"),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SetStatePage()));
                },
              ),
            ),
          ],
        )),
      ),
    );
  }

}
