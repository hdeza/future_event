import 'package:flutter/material.dart';
import 'package:nulti_auth/ui/routes/routes.dart';
import 'package:nulti_auth/ui/widgets/navigation_bar.dart';

class Index extends StatefulWidget {
  const Index({key}) : super(key: key);

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  int index = 0;
  NavigationButtonBar myNavi;

  @override
  void initState() {
    myNavi = NavigationButtonBar(currentIndex: (i) {
      setState(() {
        index = i;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Routes(index: index),
      bottomNavigationBar: myNavi,
    );
  }
}
