import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rowan_security/Components/ArmedStatus.dart';
import 'package:rowan_security/Components/Sensor.dart';
import 'package:rowan_security/ResetPINPage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ArmedStatus(),
            const Sensor(title: "Hi"),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ResetPINPage()),
                );
              },
              child: const Text("Change PIN"),
            ),
          ],
        ),
      ),
    );
  }
}
