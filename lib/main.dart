import 'package:arduino_piezo/splash.dart';
import 'package:arduino_piezo/view_sensor_piezo.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    title: 'Piezo Monitor',
    routes: <String, WidgetBuilder>{
      '/': (BuildContext context) => SplashPage(), // Default
      '/view_sensor_piezo': (BuildContext context) => ViewSensorPiezo(), // Default
    },
  ));
}