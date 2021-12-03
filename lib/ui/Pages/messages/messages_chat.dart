import 'package:flutter/material.dart';
import 'package:nulti_auth/ui/Pages/messages/widgets/body.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Color(0XFFD58CFC),
      title: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('Assets/img2.jpg'),
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Totte King 🤘',
                style: TextStyle(fontSize: 16),
              ),
              Text('Active 3m ago', style: TextStyle(fontSize: 13))
            ],
          )
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.call),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.videocam),
        ),
        SizedBox(width: 15),
      ],
    );
  }
}
