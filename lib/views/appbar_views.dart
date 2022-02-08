import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_with_empliment/views/camera_views.dart';
import 'package:getx_with_empliment/views/chats_views.dart';
import 'package:getx_with_empliment/views/setting_views.dart';
import 'package:getx_with_empliment/views/status_views.dart';

import 'calls_views.dart';
// import 'package:get/get.dart';

class AppBarView extends StatelessWidget {
  const AppBarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: const Text("WhatsApp"),
          backgroundColor: Colors.teal[500],
          actions: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.search)),
            PopupMenuButton(
                icon: const Icon(Icons.more_vert),
                itemBuilder:(context){
              return [const PopupMenuItem<int>(child: Text("New group")),
                const PopupMenuItem(child: Text("New broadcast"),value: "New broadcast",),
                const PopupMenuItem(child: Text("Linked devices"),value: "Linked devices",),
                const PopupMenuItem(child: Text("Started messages"),value: "Started messages",),
                const PopupMenuItem(child: Text("Payment"),value: "Payment",),
                const PopupMenuItem(child: Text("Setting"),value: "Setting",),
              ];
            },
              onSelected: (value){
                  if(value=='Setting'){
                    Get.to(const SettingView());
                  }
              },
            ),
          ],
          bottom: const TabBar(
            indicatorColor: Colors.white,
            labelColor: Colors.white,
            tabs: [
              Tab(icon: Icon(Icons.camera_alt),),
              Tab(text: "CHATS",),
              Tab(text: "STATUS",),
              Tab(text: "CALLS",)
            ],
          ),
        ),
        body: const TabBarView(
          children: [
              CameraView(),
              ChatsView(),
              StatusView(),
              CallsView(),
          ],
        ),
      ),
    );
  }
}
