import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/route_manager.dart';
import 'package:social_media_app/view/login_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Color(0xff7B1FA2),
  ));
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
          brightness: Brightness.light,
          primaryColor: const Color(0xff9C27B0),
          primarySwatch: Colors.purple,
          // ignore: deprecated_member_use
          accentColor: const Color(0xff9E9E9E),
          primaryColorDark: const Color(0xff7B1FA2),
          primaryColorLight: const Color(
            0xffE1BEE7,
          )),
      home: const LoginView(),
    );
  }
}

