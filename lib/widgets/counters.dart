import 'package:flutter/material.dart';

import 'counter.dart';

class CountersWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CountersWidgetState();
}

class CountersWidgetState extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Wrap(
      children: [
        CounterWidget(),
        CounterWidget(),
        CounterWidget(),
        CounterWidget(),
        CounterWidget()
      ],
    ));
  }
}
