import 'package:animation/scr/constants/apptext.dart';
import 'package:animation/scr/constants/colors.dart';
import 'package:animation/scr/constants/imageString.dart';
import 'package:animation/scr/constants/sizes.dart';
import 'package:animation/scr/features/Screen/Welcome/welcome.dart';
import 'package:animation/scr/features/controllers/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class splash extends StatelessWidget {
  splash({Key? key}) : super(key: key);

  // bool animated = false;

  final SplashController = Get.put(splashController());

  @override
  Widget build(BuildContext context) {
    SplashController.startanimation();
    return Scaffold(
      body: Stack(
        children: [
          Obx(
            () => AnimatedPositioned(
                duration: const Duration(milliseconds: 1600),
                top: SplashController.animated.value ? 0 : -30,
                left: SplashController.animated.value ? 0 : -30,
                child: Image(image: AssetImage(splashtop))),
          ),
          Obx(
            () => AnimatedPositioned(
                duration: Duration(milliseconds: 1600),
                top: 80,
                left: SplashController.animated.value ? deafultsize : -80,
                child: AnimatedOpacity(
                  duration: Duration(milliseconds: 1600),
                  opacity: SplashController.animated.value ? 1 : 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        appname,
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                      Text(
                        apptag,
                        style: Theme.of(context).textTheme.headlineMedium,
                      )
                    ],
                  ),
                )),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: Duration(milliseconds: 2400),
              bottom: SplashController.animated.value ? 100 : 0,
              child: AnimatedOpacity(
                duration: Duration(milliseconds: 2000),
                opacity: SplashController.animated.value ? 1 : 0,
                child: Image(
                  image: AssetImage(splashimage),
                ),
              ),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: Duration(milliseconds: 2400),
              bottom: SplashController.animated.value ? 60 : 0,
              right: deafultsize,
              child: AnimatedOpacity(
                opacity: SplashController.animated.value ? 1 : 0,
                duration: Duration(milliseconds: 2000),
                child: Container(
                  width: containerSize,
                  height: containerSize,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: primarycolor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

/*Future startanimation() async {
    await Future.delayed(Duration(milliseconds: 500));
    setState(() => animated = true);
    await Future.delayed(Duration(milliseconds: 1500));
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => welcome(),
        ));
  }*/
}
