import 'package:flutter/material.dart';
import 'package:mythings_figma/screen_view.dart';

void main() {
  runApp(
    // ignore: prefer_const_constructors
    MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      // ignore: prefer_const_constructors
      body: Screen(),
    );
  }
}
