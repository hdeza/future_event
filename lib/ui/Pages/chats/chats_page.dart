import 'package:flutter/material.dart';
import 'package:nulti_auth/ui/Pages/chats/widgets/body.dart';
import 'package:nulti_auth/ui/Pages/contacts/contacts_page.dart';
import 'package:nulti_auth/ui/widgets/navigation_bar.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ContactsPage(),
            )),
        child: Icon(Icons.person_add_alt_1),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text('Chats'),
      automaticallyImplyLeading: false,
      backgroundColor: Color(0XFFD58CFC),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.search),
        )
      ],
    );
  }
}
