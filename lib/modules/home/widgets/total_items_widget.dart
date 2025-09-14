import 'package:devanshu_asymetri/modules/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class TotalItemsWidget extends StatelessWidget {
  const TotalItemsWidget({super.key});
  final borderStyle = const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15.0)));

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        return SizedBox(
          width: 300,
          child: Obx(
            () => TextFormField(
              cursorColor: controller.selectedColor.value,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              style: TextStyle(color: controller.selectedColor.value),
              decoration: InputDecoration(
                labelText: 'Total Items',
                labelStyle: TextStyle(color: controller.selectedColor.value, fontWeight: FontWeight.bold),
                border: borderStyle.copyWith(borderSide: BorderSide(color: controller.selectedColor.value)),
                disabledBorder: borderStyle.copyWith(borderSide: BorderSide(color: controller.selectedColor.value)),
                enabledBorder: borderStyle.copyWith(borderSide: BorderSide(color: controller.selectedColor.value)),
                focusedBorder: borderStyle.copyWith(borderSide: BorderSide(color: controller.selectedColor.value)),
              ),
              onChanged: (value) => controller.setTotalItems = int.tryParse(value) ?? 0,
            ),
          ),
        );
      },
    );
  }
}
