import 'package:flutter/material.dart';
import 'package:testingui/Widget.dart';

List<Icon> items = [
  const Icon(Icons.star),
  const Icon(Icons.account_balance_wallet_rounded),
  const Icon(Icons.calendar_today),
  const Icon(Icons.person),
  const Icon(Icons.settings_rounded),
];

class listView extends StatelessWidget {
  const listView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(appBar: AppBar(
          centerTitle: true,
          title: customtext1("ListView"),
        ),
      body: Center(
        child: ListView(
          children: [
            ListTile(
              title: const Text("Star"),
              onTap: () {},
              trailing: items[0],
            ),
            ListTile(
              title: const Text("Wallet"),
              onTap: () {},
              trailing: items[1],
            ),
            ListTile(
              title: const Text("Calendar"),
              onTap: () {},
              trailing: items[2],
            ),
            ListTile(
              title: const Text("Profile"),
              onTap: () {},
              trailing: items[3],
            ),
            ListTile(
              title: const Text("Settings"),
              onTap: () {},
              trailing: items[4],
            )
          ],
        ),
      ),
    ));
  }
}
