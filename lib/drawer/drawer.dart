import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled3/controller/controller.dart';

class Home extends GetView<Drawercontroller> {
  final controller = Get.put(Drawercontroller());

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        const DrawerHeader(
          child: Text(
            'Drawer Header',
            style: TextStyle(color: Colors.white),
          ),
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
        ),
        ListTile(
          leading: const Icon(Icons.home),
          title: const Text('Item 1'),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.settings),
          title: const Text('Item 2'),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.close),
          title: const Text('Close'),
          onTap: controller.closeDrawer,
        )
      ],
    );
  }
}
