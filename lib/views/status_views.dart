import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_with_empliment/controller/counter_controller.dart';
import 'edit_status.dart';

class StatusView extends StatefulWidget {
  const StatusView({Key? key}) : super(key: key);

  @override
  State<StatusView> createState() => _StatusViewState();
}

class _StatusViewState extends State<StatusView> {
  Controller c = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
              onTap: () {},
              title: const Text("My status"),
              subtitle: const Text("Yesterday,7:07 pm"),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_horiz,
                  size: 28,
                  color: Colors.teal,
                ),
              ),
              leading: const SizedBox(
                height: 50,
                width: 50,
                child: CircleAvatar(
                  backgroundImage: NetworkImage('https://picsum.photos/200'),
                ),
              )),
          Container(
            child: const Text("Recent update"),
            padding: const EdgeInsets.only(left: 15),
          ),
          ListTile(
            onTap: () {
              print("status click");
            },
            title: const Text("Rajkumar"),
            subtitle: const Text("2 minutes age"),
            leading: const SizedBox(
              height: 50,
              width: 50,
              child: CircleAvatar(
                backgroundImage: NetworkImage('https://picsum.photos/200'),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: Stack(
        children: [
          Positioned(
            child: FloatingActionButton(
              elevation: 30,
              onPressed: () {
                Get.to(const EditStatusView());
              },
              child: const Icon(
                Icons.edit,
                color: Colors.grey,
              ),
              backgroundColor: Colors.grey[200],
            ),
            right: 0,
            bottom: 70,
          ),
          Positioned(
            child: FloatingActionButton(
              heroTag:
                  'There are multiple heroes that share the same tag within a subtree',
              elevation: 20,
              onPressed: () {},
              child: const Icon(Icons.camera_alt),
              backgroundColor: Colors.teal,
            ),
            right: 0,
            bottom: 0,
          ),
        ],
      ),
    );
  }
}
