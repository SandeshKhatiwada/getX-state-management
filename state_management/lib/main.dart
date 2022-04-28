// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables, prefer_const_literals_to_create_immutables, deprecated_member_use, avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/controller.dart';
import 'package:state_management/detail/binding/detail_binding.dart';
import 'package:state_management/detail/detail.dart';

import 'binding/home_binding.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "State Managemant",
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      getPages: [
        GetPage(name: "/home", page: () => HomePage(), binding: HomeBinding()),
        GetPage(name: "/detail", page: () => Detail(), binding: DetailBinding())
      ],
      initialRoute: "/home",
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final homeController = Get.find<HomeController>();
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                "${homeController.count}",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
            SizedBox(height: 15),
            FlatButton(
              onPressed: () {
                // Get.to(Detail());
                //print(apiService.fetchTextFromAPi());
                homeController.increment();
              },
              child: Text("Increment"),
              color: Colors.teal,
              textColor: Colors.white,
            ),
            SizedBox(height: 15),
            FlatButton(
              onPressed: () {
                // Get.defaultDialog(title: "This is dialogue");
                Get.snackbar("Title", "This is getX snackBar",
                    snackPosition: SnackPosition.BOTTOM);
                //Get.toNamed("/detail");
                //print(apiService.fetchTextFromAPi());
                //homeController.increment();
              },
              child: Text("Go to Detail"),
              color: Colors.teal,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
