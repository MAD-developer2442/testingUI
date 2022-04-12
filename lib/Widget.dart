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