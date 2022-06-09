import 'package:get/get.dart';
import 'package:getx_authentication_google/controller/authentication_controller.dart';
import 'package:getx_authentication_google/controller/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<AuthenticationController>(
      () => AuthenticationController(),
    );
  }
}
