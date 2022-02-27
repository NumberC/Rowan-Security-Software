import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sensor extends StatefulWidget {
  const Sensor({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<StatefulWidget> createState() => _Sensor();
}

class _Sensor extends State<Sensor> {
  bool enabled = true;
  bool expanded = false;
  bool isTriggered = false;

  bool usesAlarm = true;

  @override
  Widget build(BuildContext context) {
    Widget bar = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Switch(
                value: enabled,
                onChanged: (bool i) {
                  setState(() {
                    enabled = i;
                  });
                }),
            if (enabled)
              IconButton(
                  onPressed: () {
                    setState(() {
                      expanded = !expanded;
                    });
                  },
                  icon: Icon((expanded)
                      ? Icons.expand_more_sharp
                      : Icons.expand_less_sharp)),
            Text(widget.title),
          ],
        ),
        Text(isTriggered ? "Triggered" : "Safe"),
      ],
    );

    Widget options = Padding(
      padding: const EdgeInsets.fromLTRB(100, 0, 0, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SwitchListTile(
            title: const Text("Uses Alarm"),
            value: usesAlarm,
            onChanged: (bool i) {
              setState(() {
                usesAlarm = i;
              });
            },
          ),
          if (usesAlarm)
            TextButton(
              onPressed: () {
                print("Triggering Alarm");
              },
              child: const Text("Test Alarm"),
            ),
          TextButton(
            onPressed: () {
              print("Calling 911");
            },
            child: const Text("Call 911"),
          )
        ],
      ),
    );

    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          bar,
          if (enabled && expanded) options,
        ],
      ),
    );
  }
}
