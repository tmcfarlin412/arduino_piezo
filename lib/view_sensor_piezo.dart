import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class ViewSensorPiezo extends StatefulWidget {
  ViewSensorPiezo({this.app});
  final FirebaseApp app;

  @override
  _ViewSensorPiezoState createState() => _ViewSensorPiezoState();
}

class _ViewSensorPiezoState extends State<ViewSensorPiezo> {

  DatabaseReference _counterRef;
  StreamSubscription<Event> _counterSubscription;

  @override
  void initState() {
    _counterRef = FirebaseDatabase.instance.reference().child('piezo-1');

    final FirebaseDatabase database = FirebaseDatabase(app: widget.app);
    database.reference().child('piezo-1').once().then((DataSnapshot snapshot) {
      print('Connected to second database and read ${snapshot.value}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text("Hello World");
  }
}
