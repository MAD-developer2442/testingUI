import 'package:flutter/material.dart';

Widget customtext1(String txt) {
  return Text(
    txt,
    style: const TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
  );
}

Widget customtext2(String txt) {
  return Text(
    txt,
    textAlign: TextAlign.center,
    style: const TextStyle(
      color: Colors.white,
      fontSize: 20,
    ),
  );
}
Widget customtext2_1(String txt) {
  return Text(
    txt,
    textAlign: TextAlign.center,
    style: const TextStyle(
      color: Colors.white,
      fontSize: 15,
    ),
  );
}

Widget customtext1_1(String txt) {
  return Text(
    txt,
    style: const TextStyle(
      fontSize: 15,
    ),
  );
}
