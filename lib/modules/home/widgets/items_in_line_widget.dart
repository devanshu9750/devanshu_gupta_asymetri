import 'package:devanshu_asymetri/modules/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class ItemsInLineWidget extends StatelessWidget {
  const ItemsInLineWidget({super.key});
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
                labelText: 'Items in Line',
                labelStyle: TextStyle(color: controller.selectedColor.value, fontWeight: FontWeight.bold),
                border: borderStyle.copyWith(borderSide: BorderSide(color: controller.selectedColor.value)),
                disabledBorder: borderStyle.copyWith(borderSide: BorderSide(color: controller.selectedColor.value)),
                enabledBorder: borderStyle.copyWith(borderSide: BorderSide(color: controller.selectedColor.value)),
                focusedBorder: borderStyle.copyWith(borderSide: BorderSide(color: controller.selectedColor.value)),
              ),
              onChanged: (value) => controller.setItemsInLine = int.tryParse(value) ?? 0,
            ),
          ),
        );
      },
    );
  }
}
