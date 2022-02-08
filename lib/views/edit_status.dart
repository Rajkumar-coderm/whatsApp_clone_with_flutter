import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditStatusView extends StatelessWidget {
  const EditStatusView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back_ios_outlined),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        color: Colors.redAccent,
        child: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            textDirection: TextDirection.ltr,
            children: const [
              TextField(
                style: TextStyle(
                  fontSize: 50
                ),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintStyle: TextStyle(
                    fontSize: 50,
                    color: Colors.grey
                  ),
                  hintText: "Type a status",
                  border: InputBorder.none,
                ),
                // maxLength: 233,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
