import 'package:devanshu_asymetri/modules/home/home_controller.dart';
import 'package:devanshu_asymetri/modules/home/widgets/drop_down_menu_widget.dart';
import 'package:devanshu_asymetri/modules/home/widgets/items_in_line_widget.dart';
import 'package:devanshu_asymetri/modules/home/widgets/logo_widget.dart';
import 'package:devanshu_asymetri/modules/home/widgets/progress_bar_widget.dart';
import 'package:devanshu_asymetri/modules/home/widgets/slider_widget.dart';
import 'package:devanshu_asymetri/modules/home/widgets/switch_widget.dart';
import 'package:devanshu_asymetri/modules/home/widgets/total_items_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const LogoWidget(),
                    const SizedBox(height: 20),
                    const DropDownMenuWidget(),
                    const SizedBox(height: 20),
                    const SliderWidget(),
                    const SizedBox(height: 20),
                    const TotalItemsWidget(),
                    const SizedBox(height: 10),
                    const ItemsInLineWidget(),
                    const SizedBox(height: 20),
                    const SwitchWidget(),
                    const SizedBox(height: 20),
                    const ProgressBarWidget(),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
