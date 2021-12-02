import 'package:flutter/material.dart';

class PostOne extends StatelessWidget {
  const PostOne({Key key}) : super(key: key);

  final String username = 'Joe Stockton';
  final String seguidores = '123 seguidores';
  final String likes = '45';

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Container(
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 3,
                ),
                IconButton(
                    //en el onpressed debe ir una ruta hacia el perfil del usuario
                    onPressed: () {},
                    icon: Icon(
                      Icons.account_circle,
                      color: Color(0xFF000000),
                      size: 36,
                    )),
                SizedBox(
                  width: 2,
                ),
                Container(
                  child: Column(
                    children: [
                      Title(
                          color: Color(0xFF000000),
                          child: Text(
                            username,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                      Text(
                        seguidores,
                        style: TextStyle(fontSize: 8.8),
                      )
                    ],
                  ),
                ),
                Expanded(child: SizedBox()),
                Container(
                    child: Column(children: [
                  IconButton(
                    // en el onPressed debe ir una funcion que redibuje el icono y coloco solo el favorite y envie esa informacion del post
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite_border,
                      color: Color(0xFF000000),
                      size: 26.4,
                    ),
                  ),
                  Text(
                    likes,
                    style: TextStyle(fontSize: 8.8),
                  )
                ])),
                SizedBox(
                  width: 8.5,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class PostSecond extends StatelessWidget {
  const PostSecond({Key key}) : super(key: key);

  final String title = 'Lorem event';
  final String text =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua..';

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Container(
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Text(title),
            SizedBox(height: 15),
            Expanded(child: Text(text))
          ],
        ),
      ),
    );
  }
}
