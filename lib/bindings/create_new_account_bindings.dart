import 'package:get/get.dart';
import 'package:social_media_app/controller/auth/create_new_account_controller.dart';

class CreateAccountBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreateAccoutController>(() => CreateAccoutController());
  }
}
