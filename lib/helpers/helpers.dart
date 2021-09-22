import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/string_extensions.dart';

class Helpers {
  static TextFormField textFrormField({
    bool? isPassword,
    required String hintText,
    required IconData iconData,
    required String labelText,
    TextInputType? textInputType,
    String? Function(String?)? validator,
    required TextEditingController controller,
  }) {
    return TextFormField(
      validator: validator,
      obscureText: isPassword ?? false,
      keyboardType: textInputType ?? TextInputType.emailAddress,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        hintText: hintText,
        prefixIcon: Icon(
          iconData,
        ),
        labelText: labelText,
      ),
    );
  }

  static Center socialIcon(BuildContext context) {
    return Center(
      child: RichText(
        text: TextSpan(
          children: const [
            TextSpan(
                text: 'ocial',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                )),
            TextSpan(
                text: ' App',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                )),
          ],
          text: 'S',
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 35,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }

  static validemail(String? email) {
    if (email!.isEmpty) {
      return 'This filed can be empty';
    } else if (email.isEmail) {
      return;
    } else {
      return 'this is not email';
    }
  }

  static validuser(String? name) {
    if (name!.isEmpty) {
      return 'This filed can be empty';
    } else {
      return;
    }
  }

  static validpassword(String? password) {
    if (password!.isEmpty) {
      return 'This filed can be empty';
    } else if (password.length > 6) {
      return 'Password is To Sort';
    } else {
      return;
    }
  }
}
