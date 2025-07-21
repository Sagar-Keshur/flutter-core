import 'package:flutter_core/routes/routes_name.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Future.delayed(
      Duration(seconds: 2),
      () => Get.toNamed(RoutesName.loginView),
    );
    super.onInit();
  }
}
