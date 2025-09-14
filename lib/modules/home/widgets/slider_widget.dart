import 'package:devanshu_asymetri/core/my_functions.dart';
import 'package:devanshu_asymetri/modules/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        return SizedBox(
          width: 300,
          child: Obx(
            () => Slider(
              min: 0,
              max: 2,
              activeColor: controller.selectedColor.value,
              label: MyFunctions.getSliderLabel(controller.sliderValue.value),
              divisions: 2,
              value: controller.sliderValue.value,
              onChanged: (value) => controller.sliderValue.value = value,
            ),
          ),
        );
      },
    );
  }
}
