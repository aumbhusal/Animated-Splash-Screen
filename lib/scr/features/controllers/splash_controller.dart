import 'package:animation/scr/features/Screen/Welcome/welcome.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class splashController extends GetxController {
  static splashController get find => Get.find();
  RxBool animated = false.obs;

  Future startanimation() async {
    await Future.delayed(Duration(milliseconds: 500));
    animated.value = true;

    await Future.delayed(Duration(milliseconds: 5000));
    Get.to(welcome());
  }
}
