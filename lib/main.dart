import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nulti_auth/ui/Pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login',
      // initialRoute: 'login',
      // routes: {'login': (_) => Login(), 'singup': (_) => SignUp()},
      home: HomePage(),
    );
  }
}
