// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/controller.dart';

class Detail extends StatelessWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final homeController = Get.find<HomeController>();
    // final apiService = Get.find<ApiService>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Screen"),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
          //Get.back();
              print(homeController.count);
            },
            icon: Icon(Icons.arrow_back)),
      ),
      // body: Center(
      //   child: Text(apiService.fetchTextFromAPi()),
      // ),
    );
  }
}
