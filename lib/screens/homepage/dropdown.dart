import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class EditableDateTime extends StatefulWidget {
  @override
  _EditableDateTimeState createState() => _EditableDateTimeState();
}

class _EditableDateTimeState extends State<EditableDateTime> {
  DateTime _selectedDate = DateTime.now();
  TimeOfDay _selectedTime = TimeOfDay.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: _selectedDate,
        firstDate: DateTime(1900),
        lastDate: DateTime(2100));
    if (picked != null && picked != _selectedDate)
      setState(() {
        _selectedDate = picked;
      });
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked =
        await showTimePicker(context: context, initialTime: _selectedTime);
    if (picked != null && picked != _selectedTime)
      setState(() {
        _selectedTime = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.date_range, size: 18),
        SizedBox(width: 8),
        InkWell(
          onTap: () {
            _selectDate(context);
          },
          child: Text(
            DateFormat('EEE, MMM d, y').format(_selectedDate),
            style: TextStyle(fontSize: 14),
          ),
        ),
        SizedBox(width: 16),
        Icon(Icons.access_time, size: 18),
        SizedBox(width: 8),
        InkWell(
          onTap: () {
            _selectTime(context);
          },
          child: Text(
            _selectedTime.format(context),
            style: TextStyle(fontSize: 14),
          ),
        ),
      ],
    );
  }
}
