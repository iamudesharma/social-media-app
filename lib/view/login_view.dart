import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:social_media_app/bindings/create_new_account_bindings.dart';
import 'package:social_media_app/controller/auth/login_controller.dart';
import 'package:social_media_app/helpers/helpers.dart';
import 'package:social_media_app/view/create_new_account_view.dart';
import 'package:social_media_app/view/main_view.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: controller.scaffoldkeylogin,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            // key: controller.formKeylogin,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Helpers.socialIcon(context),
                  const SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                      height: context.height * 0.3,
                      width: context.width * 0.7,
                      child: SvgPicture.asset('assets/Social-Media.svg')),
                  Helpers.textFrormField(
                    controller: controller.emailController,
                    hintText: 'Enter The Email',
                    iconData: Icons.email,
                    labelText: 'Email',
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Helpers.textFrormField(
                    controller: controller.passwordController,
                    hintText: 'Enter The Password',
                    iconData: Icons.email,
                    labelText: 'Password',
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      // Todo  Add Login Fuctions
                      await controller
                          .loginUser(controller.emailController.text,
                              controller.passwordController.text)
                          .then((value) {
                        print('login completed');
                        Get.to(() => const MainView());
                      });
                    },
                    child: const Text(
                      'Login',
                    ),
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(
                        MediaQuery.of(context).size.width,
                        40,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  OutlinedButton(
                    onPressed: () {
                      //Go to the Crate Account View
                      Get.to(
                        () => const CreateNewAccount(),
                        binding: CreateAccountBinding(),
                      );
                    },
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(
                        color: Theme.of(context).primaryColor,
                      ),
                      fixedSize: Size(
                        MediaQuery.of(context).size.width,
                        40,
                      ),
                    ),
                    child: const Text(
                      'Create New Account',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
