import 'package:devanshu_asymetri/core/my_data.dart';

class MyFunctions {
  static String getSliderLabel(double value) {
    return MyData.sliderLabels[value.toInt()];
  }

  static int getProgressSpeed(num speedIndex) {
    return [2000, 1000, 500][speedIndex.toInt()]; // Speed in milliseconds
  }
}
