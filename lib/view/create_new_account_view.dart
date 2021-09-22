import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:social_media_app/bindings/login_bindings.dart';
import 'package:social_media_app/controller/auth/create_new_account_controller.dart';
import 'package:social_media_app/helpers/helpers.dart';
import 'package:social_media_app/view/login_view.dart';

class CreateNewAccount extends GetView<CreateAccoutController> {
  const CreateNewAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: controller.scaffoldkey,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Form(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              key: controller.formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Helpers.socialIcon(context),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: context.height * 0.3,
                    width: context.width * 0.7,
                    child: SvgPicture.asset(
                      'assets/Social-Media.svg',
                    ),
                  ),
                  Helpers.textFrormField(
                    validator: (user) {
                      Helpers.validuser(user);
                    },
                    controller: controller.usernameContoller,
                    // controller: c,
                    hintText: 'Username',
                    iconData: Icons.person,
                    labelText: 'Username',
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Helpers.textFrormField(
                    validator: (email) {
                      Helpers.validemail(email);
                    },
                    controller: controller.emailController,
                    hintText: 'Enter The Email',
                    iconData: Icons.person,
                    labelText: 'Email',
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Helpers.textFrormField(
                    isPassword: true,
                    validator: (password) {
                      Helpers.validpassword(password);
                    },
                    controller: controller.passwordController,
                    hintText: 'Enter The Password',
                    iconData: Icons.person,
                    labelText: 'Password',
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      // Todo:  Add Create Account Fuctions
                      await controller
                          .createUser(
                            email: controller.emailController.text,
                            name: controller.usernameContoller.text,
                            password: controller.passwordController.text,
                          )
                          .then(
                            (value) => print(value),
                          );

                      Get.to(() => const LoginView());
                    },
                    child: const Text(
                      'Create New Account',
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
                        () => const LoginView(),
                        binding: LoginBinding(),
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
                      'Login',
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
