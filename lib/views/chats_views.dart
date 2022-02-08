import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatsView extends StatefulWidget {
  const ChatsView({Key? key}) : super(key: key);

  @override
  State<ChatsView> createState() => _ChatsViewState();
}

class _ChatsViewState extends State<ChatsView> {
  // late bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            trailing: Column(
              children: const [
                Text(
                  "12:07PM",
                  style: TextStyle(fontSize: 12),
                ),
                Icon(Icons.volume_off)
              ],
            ),
            title: const Text("Rahul"),
            subtitle: const Text("hii"),
            leading: const SizedBox(
              height: 50,
              width: 50,
              child: CircleAvatar(
                child: Icon(
                  Icons.person,
                  size: 40,
                  color: Colors.black,
                ),
                backgroundColor: Colors.grey,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.chat),
        backgroundColor: Colors.teal,
      ),
    );
  }
}
