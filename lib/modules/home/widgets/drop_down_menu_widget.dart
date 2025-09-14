import 'package:devanshu_asymetri/core/my_data.dart';
import 'package:devanshu_asymetri/modules/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DropDownMenuWidget extends StatelessWidget {
  const DropDownMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        return SizedBox(
          width: 300,
          child: Card(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Obx(
                () => DropdownButton<Color>(
                  icon: Icon(Icons.keyboard_arrow_down_rounded),
                  underline: const SizedBox(),
                  isExpanded: true,
                  value: controller.selectedColor.value,
                  items: List.generate(
                    MyData.dropDownItems.length,
                    (index) => DropdownMenuItem(
                      value: MyData.dropDownItems[index]['value'],
                      child: Text(MyData.dropDownItems[index]['name']),
                    ),
                  ),
                  onChanged: (value) => controller.selectedColor.value = value!,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
