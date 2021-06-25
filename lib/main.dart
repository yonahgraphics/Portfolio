import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:portforlio/presentation/pages/home/home_view.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context)=>MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    ),
  ));}