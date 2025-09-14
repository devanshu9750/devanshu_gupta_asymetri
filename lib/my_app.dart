import 'package:devanshu_asymetri/modules/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(home: HomeScreen());
  }
}
