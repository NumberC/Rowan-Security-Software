import 'package:flutter/cupertino.dart';

import 'package:flutter_blue/flutter_blue.dart'; //We're making these three things global so that we-

FlutterBlue flutterBlue = FlutterBlue.instance;

class BluetoothPage extends StatefulWidget {
  flutterBlue.startScan(timeout: Duration(seconds: 4));
  
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}

class _BlueToothPage extends State<BluetoothPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
