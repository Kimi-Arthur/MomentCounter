import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CounterWidgetState();
}

class CounterWidgetState extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 250,
        width: 250,
        child: Column(
          children: [
            Row(
              children: [Text('Line 1 icon'), Text('Line 2 icon')],
            ),
            Row(
              children: [Text('current'), Text('target')],
            )
          ],
        ),
      ),
    );
  }
}
