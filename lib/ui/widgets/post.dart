import 'package:flutter/material.dart';

class PostOne extends StatelessWidget {
  const PostOne({Key key}) : super(key: key);

  final String username = 'Username';

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Container(
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                SizedBox(
                  width: 5,
                ),
                IconButton(
                    //en el onpressed debe ir una ruta hacia el perfil del usuario
                    onPressed: () {},
                    icon: Icon(
                      Icons.account_circle,
                      color: Color(0xFF000000),
                      size: 30.4,
                    )),
                SizedBox(
                  width: 5,
                ),
                Title(
                    color: Color(0xFF000000),
                    child: Text(
                      username,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontFamily: 'Anton'),
                    )),
                Expanded(child: SizedBox()),
                IconButton(
                  // en el onPressed debe ir una funcion que redibuje el icono y coloco solo el favorite y envie esa informacion del post
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite_border,
                    color: Color(0xFF000000),
                    size: 26.4,
                  ),
                ),
                SizedBox(
                  width: 10,
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
