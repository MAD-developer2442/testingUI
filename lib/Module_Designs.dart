import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:testingui/Widget.dart';
import 'package:testingui/modules-designs/Home-Page.dart';
import 'package:testingui/modules-functions/Camera_callibration.dart';
import 'package:testingui/modules-functions/Date-Time-Picker.dart';
import 'package:testingui/modules-functions/Get-data.dart';
import 'package:testingui/modules-functions/Grid_View.dart';
import 'package:testingui/modules-functions/Image_Picker.dart';
import 'package:testingui/modules-functions/List_View.dart';
import 'package:testingui/modules-functions/List_View_Builder.dart';
import 'package:testingui/modules-functions/Local_Auth.dart';
import 'package:testingui/modules-functions/Notification.dart';
import 'package:testingui/modules-functions/Set_State.dart';
import 'package:testingui/modules-functions/Tab_Host.dart';
import 'package:testingui/modules-functions/Web_View.dart';

import 'modules-functions/Firebase_Auth.dart';

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
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => HomePageDesign()));
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
                          MaterialPageRoute(builder: (context) => const listView()));
                    },
                  ),
                ),
                Card(
                  color: Colors.grey,
                  child: ListTile(
                    title: customtext2("GridView"),
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => const GridViewPage()));
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
                          builder: (context) => const FirebaseAuthPage()));
                    },
                  ),
                ),
                Card(
                  color: Colors.grey,
                  child: ListTile(
                    title: customtext2("TabHost"),
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => const TabHost()));
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
                          MaterialPageRoute(builder: (context) => const SetStatePage()));
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
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => CameraScreen(cameras: cameras)));
                    },
                  ),
                ),
                Card(
                  color: Colors.grey,
                  child: ListTile(
                    title: customtext2("Local Auth"),
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => LocalAuth()));
                    },
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
