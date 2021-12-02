import 'package:flutter/material.dart';
import 'package:nulti_auth/ui/widgets/post.dart';
import 'package:nulti_auth/ui/widgets/navigation_bar.dart';
import 'package:slimy_card/slimy_card.dart';

class HomePage extends StatelessWidget {
  final List<String> postList = <String>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0XFFD58CFC),
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.account_circle)),
        centerTitle: true,
        title: Text('Future Event',
            style: TextStyle(
                fontSize: 20,
                color: Color(0xFF000000),
                fontWeight: FontWeight.bold)),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
      ),
      body: SafeArea(
        child: ListView.builder(
          // itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              color: Color(0XFFD58CFC),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  SlimyCard(
                    width: 350,
                    color: Color(0xFFFFFFFF),
                    topCardHeight: 180,
                    bottomCardHeight: 300,
                    borderRadius: 30,
                    topCardWidget: PostOne(),
                    bottomCardWidget: PostSecond(),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Color(0xFF000000),
        ),
        onPressed: () {},
        backgroundColor: Color(0xFFFFFFFF),
      ),
      bottomNavigationBar: NavigationButtonBar(),
    );
  }
}
