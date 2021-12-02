import 'package:flutter/material.dart';
import 'package:nulti_auth/main.dart';
import 'package:slimy_card/slimy_card.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key key}) : super(key: key);

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
            children: [
              Positioned(
                  top: 10,
                  left: 10,
                  child: Icon(
                    Icons.account_circle,
                    color: Color(0xFF000000),
                    size: 35,
                  )),
              Positioned(
                top: 70,
                left: 10,
                child: Text(
                  '''Lorem ipsum 
                  notifications''',
                  style: TextStyle(color: Color(0xFF000000)),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ),
      // body: SafeArea(
      //   child: ListView.builder(
      //     // itemCount: 5,

      //     itemBuilder: (BuildContext context, int index) {
      //       return Container(
      //         color: Color(0XFFD58CFC),
      //         child: Column(
      //           children: [
      //             SizedBox(height: 20),
      //             SlimyCard(
      //               width: 350,
      //               color: Color(0xFFFFFFFF),
      //               topCardHeight: 150,
      //               borderRadius: 30,
      //               topCardWidget: PostThird(),
      //             ),
      //             SizedBox(height: 20),
      //           ],
      //         ),
      //       );
      //     },
      //   ),
      // ),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(
      //     Icons.add,
      //     color: Color(0xFF000000),
      //   ),
      //   onPressed: () {},
      //   backgroundColor: Color(0xFFFFFFFF),
      // ),
      //bottomNavigationBar: NavigationButtonBar(),
    );
  }
}
