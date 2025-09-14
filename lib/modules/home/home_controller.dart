import 'dart:ui';
import 'package:devanshu_asymetri/core/my_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final selectedColor = (MyData.dropDownItems.first['value'] as Color).obs;
  final sliderValue = 0.0.obs;
  final totalItems = 1.obs;
  final itemsInLine = 1.obs;
  final goReverse = false.obs;

  set setTotalItems(int value) {
    if (value > 30) {
      Get.snackbar("Error", "Only 30 items allowed");
    } else {
      totalItems.value = value;
    }
  }

  set setItemsInLine(int value) {
    if (value > 15) {
      Get.snackbar("Error", "Only 15 items allowed");
    } else {
      itemsInLine.value = value;
    }
  }
}
