import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateDropdown extends StatefulWidget {
  const DateDropdown({Key? key}) : super(key: key);

  @override
  State<DateDropdown> createState() => _DateDropDownState();
}

class _DateDropDownState extends State<DateDropdown> {
  final List<String> months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];
  DateTime _selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DropdownButton<int>(
          value: _selectedDate.month,
          onChanged: (int? newValue) {
            setState(() {
              _selectedDate = DateTime(
                _selectedDate.year,
                newValue!,
                _selectedDate.day,
              );
            });
          },
          items: months.asMap().entries.map<DropdownMenuItem<int>>((entry) {
            return DropdownMenuItem<int>(
              value: entry.key + 1,
              child: Text(entry.value),
            );
          }).toList(),
        ),
        SizedBox(width: 20,),
        DropdownButton<int>(
          value: _selectedDate.year,
          onChanged: (int? newValue) {
            setState(() {
              _selectedDate = DateTime(
                newValue!,
                _selectedDate.month,
                _selectedDate.day,
              );
            });
          },
          items: List.generate(10, (index) {
            return DropdownMenuItem<int>(
              value: DateTime.now().year - 5 + index,
              child: Text('${DateTime.now().year - 5 + index}'),
            );
          }),
        ),
        IconButton(
          onPressed: () {
            setState(() {
              _selectedDate = DateTime.now();
            });
          },
          icon: const Icon(CupertinoIcons.refresh),
        )
      ],
    );
  }
}
