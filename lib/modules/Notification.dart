import 'package:flutter/material.dart';
import 'package:testingui/Widget.dart';
import 'package:testingui/refactor/notification_refactor.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  void initState() {
    super.initState();
    NotificationApi.init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notification'),
      ),
      body: Center(
        child: TextButton(
            onPressed: () {
              NotificationApi.showNotification(
                title: 'Notification Tutorial',
                body: 'Gher bhego tha',
                payload: 'Buddy Expense',
              );
            },
            child: customtext1("Get Code")),
      ),
    );
  }
}
