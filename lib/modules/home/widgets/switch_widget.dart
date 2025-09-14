import 'package:devanshu_asymetri/modules/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class SwitchWidget extends StatelessWidget {
  const SwitchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        return SizedBox(
          width: 300,
          child: Obx(
            () => ListTile(
              onTap: () => controller.goReverse.value = !controller.goReverse.value,
              title: Text(
                "Reverse",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: controller.selectedColor.value),
              ),
              trailing: Switch(
                activeColor: controller.selectedColor.value,
                value: controller.goReverse.value,
                onChanged: (value) => controller.goReverse.value = value,
              ),
            ),
          ),
        );
      },
    );
  }
}
