import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled3/controller/controller.dart';
import 'package:untitled3/home/bottomNavigationbar.dart';



class place extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          controller: controller.tabController,
          tabs: [
            Tab(icon: Icon(Icons.directions_car)),
            Tab(icon: Icon(Icons.directions_bike)),
          ],
        ),
        title: Text('Tabs Demo'),
      ),
      body: TabBarView(
        controller: controller.tabController,
        children: [
          CarPage(),
          BikePage(),
        ],
      ),
    );
  }
}



class CarPage extends StatelessWidget {
  @override
  final controller = Get.put(CarPageController());

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Text("controller.car.value"));
  }


}

class BikePage extends StatelessWidget {
 // const ({Key? key}) : super(key: key);
  final controller = Get.put(BikePageController());
  @override
  Widget build(BuildContext context) {
     return Center(
      child:Column(
        children: [
          const Text("controller.bike.value"),
          Container(
            height: 300,
            color: Colors.yellow,
            child: GestureDetector(
                onTap:(){ Get.to(LandingPage());},
                child: Text("car")),
          )
        ],
      )
    );
  }
}


