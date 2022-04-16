import 'package:flutter/material.dart';

import '../models/counter.dart';

class CounterWidget extends StatefulWidget {
  final Counter counter;

  CounterWidget(this.counter);

  @override
  State<StatefulWidget> createState() => CounterWidgetState();
}

class CounterWidgetState extends State<CounterWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 250,
        width: 250,
        child: Column(
          children: [
            Center(
              child: Text(widget.counter.title, textScaleFactor: 3),
            ),
            Expanded(
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.remove),
                    onPressed: () {},
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                          '${widget.counter.events.isEmpty ? 0 : widget.counter.events.last.amount}/${widget.counter.dailyGoal}',
                          textScaleFactor: 2),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.add),
                    onPressed: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
