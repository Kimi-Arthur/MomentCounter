import 'package:flutter/material.dart';

import '../models/user.dart';
import '../utils/data_util.dart';
import 'counter.dart';

class CountersWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CountersWidgetState();
}

class CountersWidgetState extends State<StatefulWidget> {
  final Future<User> _user = DataUtil.instance.then((util) => util.loadUser());

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _user,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var user = snapshot.data as User;
            return SingleChildScrollView(
                child: Wrap(
              children: user.counters
                  .map((c) => CounterWidget(c))
                  .toList(growable: false),
            ));
          }

          return const SizedBox(
            width: 200,
            height: 200,
            child: CircularProgressIndicator(),
          );
        });
  }
}
