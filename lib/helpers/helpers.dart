import 'package:flutter/material.dart';

class Helpers {
  static TextFormField textFrormField({
    bool? isPassword,
    required String hintText,
    required IconData iconData,
    required String labelText,
    TextInputType? textInputType,
  }) {
    return TextFormField(
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
}
