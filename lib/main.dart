import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nulti_auth/domain/use_case/controllers/location.dart';
import 'package:nulti_auth/domain/use_case/controllers/permission_management.dart';
import 'package:nulti_auth/domain/use_case/controllers/permissions.dart';
import 'package:nulti_auth/ui/Pages/Login10/Login.dart';
import 'package:nulti_auth/ui/Pages/Login10/Signup.dart';
import 'package:nulti_auth/ui/Pages/chats/chats_page.dart';
import 'package:nulti_auth/ui/Pages/home_page.dart';
import 'package:nulti_auth/ui/Pages/notifications/notifications_page.dart';
import 'ui/Pages/index.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {
  
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login',
      initialRoute: 'login',
      routes: {
        'login': (_) => Login(),
        'singup': (_) => SignUp(),
        'homepage': (_) => HomePage(),
        'chats': (_) => ChatsPage(),
        'notifications': (_) => NotificationPage(),
        'index': (_) => Index(),
      },
      //home: HomePage(),
    );
  }

@override
  void initState() {
  
    PermissionsController permissionsController =
        Get.put(PermissionsController());
    permissionsController.permissionManager = PermissionManager();
    Get.lazyPut(() => LocationController());
    super.initState();
  }
  
  TextEditingController nameController = TextEditingController();

  bool isLoggedIn = false;
  String name = '';



  void autoLogIn() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final bool logged = prefs.getBool('logged') ?? false;

    if (logged != false) {
      setState(() {
        isLoggedIn = true;
        name = prefs.getString('username') ?? 'No name yet';
      });
      return;
    }
  }

  Future<void> logout() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('logged', false);
    setState(() {
      name = '';
      isLoggedIn = false;
    });
  }

  Future<void> loginUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('logged', true);
    prefs.setString('username', nameController.text);
    setState(() {
      name = nameController.text;
      isLoggedIn = true;
    });
    nameController.clear();
  }

}
