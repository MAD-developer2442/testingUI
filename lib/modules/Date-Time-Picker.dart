import 'package:flutter/material.dart';
import 'package:testingui/Widget.dart';

DateTime selectedDate = DateTime.now();
TimeOfDay selectedTime = TimeOfDay.now();

class dateTimePicker extends StatefulWidget {
  @override
  _dateTimePicker createState() => _dateTimePicker();
}

class _dateTimePicker extends State<dateTimePicker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: customtext1("Date/Time Picker")),
        body: SafeArea(
            child: Center(
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  _selectDate(context);
                },
                child: Column(
                  children: [
                    Text(
                        "${selectedDate.day}/${selectedDate.month}/${selectedDate.year}"),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  _selectTime(context);
                },
                child: Column(
                  children: [
                    Image.asset(
                      "images/img.png",
                    ),
                    Text("${selectedTime.hour}:${selectedTime.minute}"),
                  ],
                ),
              ),
            ],
          ),
        )));
  }

  _selectDate(BuildContext context) async {
    final DateTime? selected = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2010),
      lastDate: DateTime(2025),
    );
    if (selected != null && selected != selectedDate) {
      setState(() {
        selectedDate = selected;
      });
    }
  }

  _selectTime(BuildContext context) async {
    final TimeOfDay? selected = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );
    if (selected != null && selected != selectedDate) {
      setState(() {
        selectedTime = selected;
      });
    }
  }
}
