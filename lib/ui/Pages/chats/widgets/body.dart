import 'package:flutter/material.dart';
import 'package:nulti_auth/ui/Pages/chats/widgets/chat_card.dart';
import 'package:nulti_auth/ui/models/chats.dart';

class Body extends StatelessWidget {
  const Body({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0XFFD58CFC),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: chatsData.length,
              itemBuilder: (context, index) => chatCard(
                chat: chatsData[index],
              ),
            ),
          )
        ],
      ),
    );
  }
}
