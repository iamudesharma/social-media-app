import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_media_app/bindings/create_new_account_bindings.dart';
import 'package:social_media_app/controller/auth/login_controller.dart';
import 'package:social_media_app/controller/firebase_controller.dart/firebase_controller.dart';
import 'package:social_media_app/view/login_view.dart';
import 'package:social_media_app/view/main_view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Color(0xff7B1FA2),
  ));

  Get.put(LoginController());
  Get.put<CreateAccountBinding>(CreateAccountBinding());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.aBeeZeeTextTheme(),
        brightness: Brightness.light,
        primaryColor: const Color(0xff9C27B0),
        primarySwatch: Colors.purple,
        // ignore: deprecated_member_use
        accentColor: const Color(0xff9E9E9E),
        primaryColorDark: const Color(0xff7B1FA2),
        primaryColorLight: const Color(
          0xffE1BEE7,
        ),
      ),
      home: Get.find<LoginController>().user.value != null
          ? const MainView()
          : const LoginView(),
    );
  }
}
