import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:nulti_auth/ui/models/users.dart';

class ContactsPage extends StatefulWidget {
  const ContactsPage({key}) : super(key: key);

  @override
  State<ContactsPage> createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  var URLfromJson = Uri.parse('https://jsonplaceholder.typicode.com/users');
  http.Client cliente;
  List<User> users;
  bool loading = true;
  bool error = false;

  @override
  void initState() {
    cliente = http.Client();
    users = <User>[];
    fechDataFromJSON();
    super.initState();
  }

  Future<void> fechDataFromJSON() async {
    http.Response respuesta = await cliente.get(URLfromJson);

    if (respuesta.statusCode == 200) {
      List jsonData = jsonDecode(respuesta.body);
      jsonData.map((dynamic json) => users.add(User.fromJSON(json))).toList();
      print(jsonData);

      setState(() {
        loading = false;
      });
    } else {
      Exception('Error');
      setState(() {
        loading = false;
        error = true;
      });
    }
  }

  @override
  void dispose() {
    cliente?.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nuevo mensaje'),
      ),
      body: loading ? customLoading() : customListBuilder(),
    );
  }

  Widget customLoading() {
    return SafeArea(
      child: Container(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }

  Widget customListBuilder() {
    return SafeArea(
      child: Container(
        child: users.isEmpty
            ? dataEmpty()
            : ListView.builder(
                itemCount: users.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('${users[index].getname}'),
                    subtitle: Text('${users[index].getusername}'),
                  );
                },
              ),
      ),
    );
  }

  Widget dataEmpty() {
    return SafeArea(
      child: Container(
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text('Lista vacia'),
              subtitle: Text('La API no tiene datos'),
            )
          ],
        ),
      ),
    );
  }
}
