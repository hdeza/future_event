import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class NavigationButtonBar extends StatefulWidget {
  NavigationButtonBar({key}) : super(key: key);

  @override
  _NavigationButtonBarState createState() => _NavigationButtonBarState();
}

class _NavigationButtonBarState extends State<NavigationButtonBar> {
  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      key: _bottomNavigationKey,
      backgroundColor: Color(0XFFD58CFC),
      items: [
        Icon(Icons.home, size: 30),
        Icon(Icons.toc, size: 30),
        Icon(Icons.search, size: 30),
        Icon(Icons.message, size: 30)
      ],
      onTap: (index) {
        setState(() {
          _page = index;
        });
      },
    );
  }
}
