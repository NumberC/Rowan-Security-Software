import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ArmedStatus extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ArmedStatus();
}

class _ArmedStatus extends State<ArmedStatus> {
  bool isArmed = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {},
          child: const Text("Armed"),
        ),
        TextButton(
          onPressed: () {},
          child: const Text("Unarmed"),
        )
      ],
    );
  }
}
