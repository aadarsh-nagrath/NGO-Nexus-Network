import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vyasa/src/constants/colors.dart';
import 'package:vyasa/src/constants/sizes.dart';
import 'package:vyasa/src/constants/text.dart';
import '../../controllers/splash_screen_controller.dart';
import 'package:vyasa/src/constants/image_string.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  final splashController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    SplashScreenController.find.startAnimation();

    return Scaffold(
      body: Stack(
        children: [
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: splashController.animate.value ? -60 : 0,
              left: -180,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 1600),
                opacity: splashController.animate.value ? 1 : 0,
                child: Transform.scale(
                  scale: 0.2, // Adjust the scale factor as needed
                  child: Image.asset(splashTopIcon),
                ),
              ),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 2000),
              top: 80,
              left: splashController.animate.value ? defaultSize : -80,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 2000),
                opacity: splashController.animate.value ? 1 : 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      appTagLine,
                      style: Theme.of(context).textTheme.titleMedium,
                    )
                  ],
                ),
              ),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 2400),
              bottom: splashController.animate.value ? 100 : 0,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 2000),
                opacity: splashController.animate.value ? 1 : 0,
                child: Transform.scale(
                  scale: 0.5, // Adjust the scale factor as needed
                  child: Center(
                    widthFactor: 0.8,
                    heightFactor: 0.8,
                    child: Image.asset(splashImage),
                  ),
                ),
              ),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 2400),
              bottom: splashController.animate.value ? 60 : 0,
              right: defaultSize,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 2000),
                opacity: splashController.animate.value ? 1 : 0,
                child: Container(
                  width: splashContainerSize,
                  height: splashContainerSize,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(splashContainerSize / 2),
                    color: primaryColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
