import 'package:flutter/material.dart';
import 'package:testingui/Widget.dart';

DateTime selectedDate = DateTime.now();
TimeOfDay selectedTime = TimeOfDay.now();

class DateTimePickerPage extends StatefulWidget {
  @override
  _dateTimePicker createState() => _dateTimePicker();
}

class _dateTimePicker extends State<DateTimePickerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: customtext1("Date/Time Picker")),
        body: SafeArea(
            child: Center(
          child: Row(crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  _selectDate(context);
                },
                child: Card(
                  elevation: 10,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    width: 100,
                    height: 125,
                    child: Column(
                      children: [
                        Image.asset(
                          "images/Calendar.png",
                        ),
                        Text(
                            "${selectedDate.day}/${selectedDate.month}/${selectedDate.year}"),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  _selectTime(context);
                },
                child: Card(
                  elevation: 10,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    height: 125,
                    width: 100,
                    child: Column(
                      children: [
                        Image.asset(
                          "images/Timer.png",
                        ),
                        Text("${selectedTime.hour}:${selectedTime.minute}"),
                      ],
                    ),
                  ),
                ),
              )
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
