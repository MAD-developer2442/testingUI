import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:testingui/Widget.dart';

final Username_controller = TextEditingController();
final Email_controller = TextEditingController();
bool _showContainer = false;
final userdata = GetStorage();

class GetData extends StatefulWidget {
  @override
  State<GetData> createState() => _getData();
}

class _getData extends State<GetData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: customtext1("Get Data"), centerTitle: true),
      body: SafeArea(
        child: Column(
          children: [
            TextField(
              controller: Username_controller,
              decoration: const InputDecoration(
                  labelText: "Enter Username", hintText: "Username"),
            ),
            TextField(
              controller: Email_controller,
              decoration: const InputDecoration(
                  labelText: "Enter Email", hintText: "Email"),
            ),
            ButtonStyle1("Submit"),
            Visibility(
                visible: _showContainer,
                child: Container(
                    child: Column(
                  children: [
                    Text('${userdata.read("username")}'),
                    Text('${userdata.read("email")}')
                  ],
                )))
          ],
        ),
      ),
    );
  }

  Widget ButtonStyle1(String Txt) {
    return ElevatedButton(
        onPressed: () {
          setState(() {
            _showContainer = !_showContainer;
            String username = Username_controller.text;
            String email = Email_controller.text;

            userdata.write("username", username);
            userdata.write("email", email);
            String usernameread = userdata.read("username").trim();
            String emailread = userdata.read("email").trim();

            // Navigator.of(context)
            //     .push(MaterialPageRoute(builder: (context) => dataEntry()));
          });
        },
        child: Text(Txt));
  }
}
