import 'package:flutter/material.dart';
import 'package:nulti_auth/ui/Pages/chats/chats_page.dart';
import 'package:nulti_auth/ui/Pages/home_page.dart';
import 'package:nulti_auth/ui/Pages/notifications/notifications_page.dart';
import 'package:nulti_auth/ui/Pages/search/search_page.dart';

class Routes extends StatelessWidget {
  final int index;
  const Routes({key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> myList = [
      HomePage(),
      NotificationPage(),
      SearchPage(),
      ChatsPage()
    ];
    return myList[index];
  }
}
