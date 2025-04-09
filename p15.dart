import 'package:flutter/material.dart';

void main() => runApp(DateTimeApp());

class DateTimeApp extends StatefulWidget {
  @override
  _DateTimeAppState createState() => _DateTimeAppState();
}

class _DateTimeAppState extends State<DateTimeApp> {
  DateTime _selectedDate = DateTime.now();
  TimeOfDay _selectedTime = TimeOfDay.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _selectedTime,
    );
    if (picked != null && picked != _selectedTime) {
      setState(() {
        _selectedTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Date & Time Picker')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Selected Date: ${_selectedDate.toLocal()}'),
              ElevatedButton(
                child: Text('Select Date'),
                onPressed: () => _selectDate(context),
              ),
              SizedBox(height: 20),
              Text('Selected Time: ${_selectedTime.format(context)}'),
              ElevatedButton(
                child: Text('Select Time'),
                onPressed: () => _selectTime(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
