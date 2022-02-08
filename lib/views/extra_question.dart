import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_with_empliment/controller/counter_controller.dart';

class ExtraQuestion extends StatelessWidget {
  // const ExtraQuestion({Key? key}) : super(key: key);
  final c = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ExtraQuestion"),
      ),
      floatingActionButton: Stack(
        children: [
          Positioned(
            left: 25,
            bottom: 0,
            child: FloatingActionButton(
              onPressed: () {
                Get.defaultDialog(
                  actions: [
                    TextButton(
                      onPressed: () {
                        c.okFunction();
                      },
                      child: const Text("Cancel"),
                    ),
                    TextButton(
                      onPressed: () {
                        c.cancel();
                        Get.back();
                      },
                      child: const Text("Ok"),
                    ),
                  ],
                  title: "Message",
                  content: Container(
                    width: 200,
                    height: 200,
                    child: ListView.builder(
                      itemCount: c.dialogData.length,
                      itemBuilder: (context, index) {
                        return StatefulBuilder(
                          builder: (context, seState) {
                            return Checkbox(
                              activeColor: Colors.red,
                              value: c.dialogData[index],
                              onChanged: (val) {
                                seState(() {
                                  c.onChange2(index);
                                });
                              },
                            );
                          },
                        );
                      },
                    ),
                  ),
                );
              },
              child: const Icon(Icons.chat),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: FloatingActionButton(
              onPressed: () {
                Get.bottomSheet(
                  GetBuilder<Controller>(
                    builder: (data) {
                      return ListView.builder(
                        itemCount: c.allData.length,
                        itemBuilder: (context, index) {
                          return Container(
                            child: Column(
                              children: [
                                CheckboxListTile(
                                  title: Text("Day-$index"),
                                  value: c.allData[index],
                                  onChanged: (val) {
                                    c.onChange1(index);
                                  },
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                  ),
                );
              },
              child: const Icon(Icons.vertical_align_bottom_sharp),
            ),
          ),
        ],
      ),
    );
  }
}
