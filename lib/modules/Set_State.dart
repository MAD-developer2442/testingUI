import 'package:flutter/material.dart';
import 'package:testingui/Widget.dart';

class SetStatePage extends StatefulWidget {
  @override
  _SetStatePageState createState() => _SetStatePageState();
}

bool _showcontainerblue = false;
bool _showcontainerred = false;

bool _showcontainerblack = false;


class _SetStatePageState extends State<SetStatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Set State'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.all(10),
                  child: CircleAvatar(
                    radius: 20,
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          _showcontainerblue = !_showcontainerblue;
                        });
                      },
                      icon: const Icon(Icons.add),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 20,
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          _showcontainerblack = !_showcontainerblack;

                        });
                      },
                      icon: const Icon(Icons.add),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: 20,
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          _showcontainerred = !_showcontainerred;

                        });
                      },
                      icon: const Icon(Icons.add),
                    ),
                  ),
                ),
              ],
            ),
            Visibility(
              child: Container(
                child: customtext1("Blue"),
              ),
              visible: _showcontainerblue,
            ),
            Visibility(
              child: Container(
                child: customtext1("Black"),
              ),
              visible: _showcontainerblack,
            ),
            Visibility(
              child: Container(
                child: customtext1("Red"),
              ),
              visible: _showcontainerred,
            ),
          ],
        ),
      ),
    );
    ;
  }
}
