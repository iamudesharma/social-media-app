import 'package:get/get.dart';
import 'package:social_media_app/controller/auth/login_controller.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
  }
}
