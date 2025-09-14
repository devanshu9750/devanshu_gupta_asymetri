import 'package:devanshu_asymetri/core/my_data.dart';
import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: SizedBox(
        width: 300,
        height: 100,
        child: Image.network(MyData.logoUrl, fit: BoxFit.cover),
      ),
    );
  }
}
