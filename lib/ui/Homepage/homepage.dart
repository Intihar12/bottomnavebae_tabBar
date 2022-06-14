import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled3/controller/controller.dart';
import 'package:untitled3/drawer/drawer.dart';

class HomeScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home"),),
        drawer: Drawer(child: Home(),width: 200,),
      body: Container(
        child: Text("homepage"),
      ),
    );
  }
}

class explore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    // ↑ init tab controller

    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX TabView')),


      body: Center()

    );
  }
}
