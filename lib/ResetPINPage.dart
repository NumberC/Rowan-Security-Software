import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResetPINPage extends StatefulWidget {
  const ResetPINPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ResetPINPage();
}

class _ResetPINPage extends State<ResetPINPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              createFormField("Old PIN"),
              createFormField("New PIN"),
              createFormField("Confirm New PIN"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("Go Back"),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text("Change PIN"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget createFormField(String labelText) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
    child: TextFormField(
      decoration: InputDecoration(
        border: const UnderlineInputBorder(),
        labelText: labelText,
      ),
    ),
  );
}
