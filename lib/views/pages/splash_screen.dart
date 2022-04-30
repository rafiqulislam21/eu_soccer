import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:eu_soccer/constants/app_images.dart';
import 'package:eu_soccer/constants/app_sizes.dart';
import 'package:eu_soccer/views/pages/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    initialize();
    return Scaffold(
      backgroundColor: Get.theme.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Spacer(),
            Hero(
              tag: "logo",
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(500)),
                child: Container(
                  decoration: BoxDecoration(
                      color: Get.theme.primaryColor.withOpacity(0.9),
                      borderRadius: BorderRadius.circular(500)),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Image.asset(
                      AppImages.logo,
                      // fit: BoxFit.fitWidth,
                      height: AppSizes.height / 5,
                      alignment: Alignment.center,
                    ),
                  ),
                ),
              ),
            ),
            const Spacer(),
            Text(
              'title'.tr,
              style: const TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text(
              'title'.tr,
              style: const TextStyle(
                  fontSize: 14, color: Colors.white, letterSpacing: 5),
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }

  initialize() async {
    await 2.delay();
    Get.off(
      HomeScreen(),
      duration: const Duration(seconds: 1),
    );
  }
}
