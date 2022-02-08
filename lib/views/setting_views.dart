import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingView extends StatelessWidget {
  const SettingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: false,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text("Settings"),
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 5),
        children: [
          ListTile(
            title: const Text(
              "Rajkumar Gahane",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            ),
            subtitle: const Text("Love is poison"),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.qr_code_scanner,
                color: Colors.teal,
              ),
            ),
            leading: const SizedBox(
              height: 60,
              width: 60,
              child: CircleAvatar(
                child: Text("R"),
              ),
            ),
          ),
          const Divider(
            height: 10,
          ),
          const ListTile(
            leading: Icon(Icons.account_balance_outlined),
            title: Text("Account"),
            subtitle: Text("Privacy,Security,change number"),
          ),
          const ListTile(
            leading: Icon(Icons.chat),
            title: Text("Chats"),
            subtitle: Text("Theme,wallpapers,chat history"),
          ),
          const ListTile(
            leading: Icon(Icons.notifications),
            title: Text("Notification"),
            subtitle: Text("Message,group & call tones"),
          ),
          const ListTile(
            leading: Icon(Icons.data_usage_rounded),
            title: Text("Storage and data"),
            subtitle: Text("Network usage,auto-download"),
          ),
          const ListTile(
            leading: Icon(Icons.help_outline),
            title: Text("Help"),
            subtitle: Text("Help center,contact us,privacy policy"),
          ),
          const ListTile(
            leading: Icon(Icons.group),
            title: Text("Invite a friend"),
          ),
          const SizedBox(
            height: 50,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text("from"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.all_inclusive_rounded),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Meta",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
