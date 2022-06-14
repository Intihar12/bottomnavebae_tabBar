import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled3/home/bottomNavigationbar.dart';


void main() {
  runApp(
      GetMaterialApp(
        debugShowCheckedModeBanner: false,
      home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LandingPage(),
    );
  }
}
