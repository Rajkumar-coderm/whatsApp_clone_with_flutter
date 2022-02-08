import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CallsView extends StatelessWidget {
  const CallsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          ListTile(
            title: Text("Rajkumar"),
            subtitle: Text("(2) Today,5:58 am"),
            trailing: Icon(Icons.videocam,size: 30,color: Colors.teal,),
            leading: SizedBox(
              height: 50,
              width: 50,
              child: CircleAvatar(
                child: Icon(Icons.person),
                backgroundColor: Colors.grey,
              ),
            )
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add_call),
        onPressed: (){},
        backgroundColor: Colors.teal,
      ),
    );
  }
}
