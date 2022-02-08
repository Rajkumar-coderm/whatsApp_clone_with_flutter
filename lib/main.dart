import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_with_empliment/views/extra_question.dart';

import 'views/appbar_views.dart';

main(){
  runApp(const MyWhatsApp());
}
class MyWhatsApp extends StatelessWidget {
  const MyWhatsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home:ExtraQuestion());
  }
}

