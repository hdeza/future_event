import 'package:flutter/material.dart';
import 'package:nulti_auth/ui/widgets/navigation_bar.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFFD58CFC),
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.account_circle)),
        centerTitle: true,
        title: Text('Future Event',
            style: TextStyle(fontSize: 20, color: Color(0xFF000000))),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
      ),
      body: Container(
        color: Color(0XFFD58CFC),
        child: Center(
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
