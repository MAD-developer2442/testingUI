import 'package:flutter/material.dart';

class SetStatePage extends StatefulWidget {
  const SetStatePage({Key? key}) : super(key: key);

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
                          _showcontainerblue = true;
                          _showcontainerblack = false;
                          _showcontainerred = false;
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
                          _showcontainerblue = false;
                          _showcontainerblack = true;
                          _showcontainerred = false;
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
                          _showcontainerblue = false;
                          _showcontainerblack = false;
                          _showcontainerred = true;
                        });
                      },
                      icon: const Icon(Icons.add),
                    ),
                  ),
                ),
              ],
            ),
            Visibility(
              child: const Icon(Icons.cake_rounded, size: 100),
              visible: _showcontainerblue,
            ),
            Visibility(
              child: const Icon(Icons.star_border, size: 100),
              visible: _showcontainerblack,
            ),
            Visibility(
              child: const Icon(Icons.home_filled, size: 100),
              visible: _showcontainerred,
            ),
          ],
        ),
      ),
    );
  }
}
