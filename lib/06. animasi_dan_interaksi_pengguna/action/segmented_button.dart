import 'package:flutter/material.dart';

class SegmentedButtonScreen extends StatefulWidget {
  const SegmentedButtonScreen({super.key});

  @override
  State<SegmentedButtonScreen> createState() => _SegmentedButtonScreenState();
}

class _SegmentedButtonScreenState extends State<SegmentedButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SegmentedButton'),
        centerTitle: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            children: [SegmentedButtonExample()],
          ),
        ),
      ),
    );
  }
}

class SegmentedButtonExample extends StatefulWidget {
  const SegmentedButtonExample({super.key});

  @override
  State<SegmentedButtonExample> createState() => _SegmentedButtonExampleState();
}

enum Calendar { day, week, month }

class _SegmentedButtonExampleState extends State<SegmentedButtonExample> {
  Calendar calendarView = Calendar.week;

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<Calendar>(
      style: SegmentedButton.styleFrom(
        backgroundColor: Colors.grey[200],
        foregroundColor: const Color(0xFFda1e3d),
        selectedForegroundColor: Colors.white,
        selectedBackgroundColor: Colors.orange,
      ),
      segments: const <ButtonSegment<Calendar>>[
        ButtonSegment<Calendar>(
            value: Calendar.day,
            label: Text('Day'),
            icon: Icon(Icons.calendar_view_day)),
        ButtonSegment<Calendar>(
            value: Calendar.week,
            label: Text('Week'),
            icon: Icon(Icons.calendar_view_week)),
        ButtonSegment<Calendar>(
            value: Calendar.month,
            label: Text('Month'),
            icon: Icon(Icons.calendar_view_month)),
      ],
      selected: <Calendar>{calendarView},
      onSelectionChanged: (Set<Calendar> newSelection) {
        setState(() {
          calendarView = newSelection.first;
        });
      },
    );
  }
}
