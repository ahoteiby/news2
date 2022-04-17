import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyScreen extends StatefulWidget {
  @override
  _MyScreenState createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  final _currentDate = DateTime.now();
  final _dayFormatter = DateFormat('d');
  final _monthFormatter = DateFormat('MMM');

  @override
  Widget build(BuildContext context) {
    final dates = <Widget>[];

    for (int i = 0; i < 5; i++) {
      final date = _currentDate.add(Duration(days: i));
      dates.add(Column(
        children: [
          Text(_dayFormatter.format(date)),
          Text(_monthFormatter.format(date)),
        ],
      ));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Tests'),
      ),
      body: Row(
        children: dates.map((widget) => Expanded(child: widget)).toList(),
      ),
    );
  }
}
