import 'package:flutter/material.dart';

class PostOne extends StatelessWidget {
  const PostOne({Key key}) : super(key: key);

  final String text =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua..';

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Positioned(
          top: 70,
          left: 10,
          child: Text(
            text,
            style: TextStyle(color: Color(0xFF000000)),
            textAlign: TextAlign.center,
          ),
        ),
        Positioned(
            top: 10,
            left: 10,
            child: Icon(
              Icons.account_circle,
              color: Color(0xFF000000),
              size: 35,
            ))
      ],
    );
  }
}

class PostSecond extends StatelessWidget {
  const PostSecond({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
