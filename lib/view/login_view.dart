import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:social_media_app/helpers/helpers.dart';
import 'package:social_media_app/view/create_new_account_view.dart';
import 'package:social_media_app/view/main_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Helpers.socialIcon(context),
            const SizedBox(
              height: 40,
            ),
            Helpers.textFrormField(
              hintText: 'Enter The Email',
              iconData: Icons.email,
              labelText: 'Email',
            ),
            const SizedBox(
              height: 30,
            ),
            Helpers.textFrormField(
              hintText: 'Enter The Password',
              iconData: Icons.email,
              labelText: 'Password',
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                // Todo  Add Login Fuctions

                Get.to(() => const MainView());
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
                Get.to(() => const CreateNewAccount());
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
    );
  }
}
