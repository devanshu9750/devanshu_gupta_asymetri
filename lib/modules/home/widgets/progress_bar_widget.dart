import 'package:devanshu_asymetri/core/my_functions.dart';
import 'package:devanshu_asymetri/modules/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class ProgressBarWidget extends StatelessWidget {
  const ProgressBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        return Obx(() {
          final animationDuration = MyFunctions.getProgressSpeed(controller.sliderValue.value);

          return Wrap(
            alignment: WrapAlignment.center,
            children: List.generate(controller.totalItems.value, (index) {
              return SizedBox(
                width: MediaQuery.of(context).size.width / controller.itemsInLine.value,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                  child: RotatedBox(
                    quarterTurns: controller.goReverse.value ? 2 : 0,
                    child: FutureBuilder(
                      future: Future.delayed(
                        Duration(
                          milliseconds: controller.goReverse.value
                              ? (controller.totalItems.value - 1 - index) * animationDuration
                              : index * animationDuration,
                        ),
                        () => true,
                      ),
                      builder: (context, snapshot) {
                        final shouldAnimate = snapshot.connectionState == ConnectionState.done;

                        return TweenAnimationBuilder<double>(
                          key: UniqueKey(),
                          tween: Tween(begin: 0.0, end: shouldAnimate ? 1.0 : 0.0),
                          duration: Duration(milliseconds: animationDuration),
                          curve: Curves.linear,
                          onEnd: () {
                            if (controller.goReverse.value && index == 0) {
                              controller.goReverse.refresh();
                            } else if (!controller.goReverse.value && index == controller.totalItems.value - 1) {
                              controller.goReverse.refresh();
                            }
                          },
                          builder: (context, value, child) {
                            return Container(
                              width: 500,
                              height: 20,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: FractionallySizedBox(
                                  alignment: Alignment.centerLeft,
                                  widthFactor: value,
                                  child: Obx(
                                    () => Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.horizontal(right: Radius.circular(10)),
                                        gradient: LinearGradient(stops: [0.1, 0.95], colors: [controller.selectedColor.value, Colors.black]),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ),
              );
            }),
          );
        });
      },
    );
  }
}
