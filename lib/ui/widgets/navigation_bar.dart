import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class NavigationButtonBar extends StatefulWidget {
  final Function currentIndex;
  NavigationButtonBar({key, this.currentIndex}) : super(key: key);

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
      animationDuration: Duration(milliseconds: 300),
      height: 60.0,
      backgroundColor: Colors.transparent,
      animationCurve: Curves.easeInOutCubicEmphasized,
      items: [
        Icon(
          Icons.home,
          size: 30,
        ),
        Icon(Icons.toc, size: 30),
        Icon(Icons.search, size: 30),
        Icon(Icons.message, size: 30)
      ],
      onTap: (index) {
        setState(() {
          _page = index;
          widget.currentIndex(index);
        });
      },
    );
  }
}
