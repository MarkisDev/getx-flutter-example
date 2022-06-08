import 'package:get/get.dart';
import 'package:getx_authentication_google/controller/authentication_controller.dart';

class AuthenticationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthenticationController>(
      () => AuthenticationController(),
    );
  }
}
