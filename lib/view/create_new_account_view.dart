import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_media_app/helpers/helpers.dart';
import 'package:social_media_app/view/login_view.dart';

class CreateNewAccount extends StatelessWidget {
  const CreateNewAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Helpers.socialIcon(context),
            const SizedBox(
              height: 30,
            ),
            Helpers.textFrormField(
              hintText: 'Username',
              iconData: Icons.person,
              labelText: 'Username',
            ),
            const SizedBox(
              height: 30,
            ),
            Helpers.textFrormField(
              hintText: 'Enter The Email',
              iconData: Icons.person,
              labelText: 'Email',
            ),
            const SizedBox(
              height: 30,
            ),
            Helpers.textFrormField(
              hintText: 'Enter The Password',
              iconData: Icons.person,
              labelText: 'Password',
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                //Todo:  Add Create Account Fuctions
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
                Get.to(() => const LoginView());
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
    );
  }
}
