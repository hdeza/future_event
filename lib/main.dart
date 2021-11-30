import 'package:flutter/material.dart';
import 'package:nulti_auth/Pages/Login10/Login.dart';
import 'package:nulti_auth/Pages/Login10/Signup.dart';
import 'package:nulti_auth/Pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login',
      // initialRoute: 'login',
      // routes: {'login': (_) => Login(), 'singup': (_) => SignUp()},
      home: HomePage(),
    );
  }
}
