import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CameraView extends StatelessWidget {
  const CameraView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Image.network('https://images.unsplash.com/photo-1533211233557-6afefb3dfcc8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8bmV0dXJlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',fit: BoxFit.fill,);
  }
}
