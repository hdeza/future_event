import 'package:flutter/material.dart';

class PostScreen extends StatelessWidget {
  final String text =
      'Text labels need to be distinct from other elements. If the text label isn’t capitalized, it should use a different color, style, or layout from other text.';

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: SizedBox(
        width: 325,
        height: 129,
        child: Container(
            child: Text(
          text,
          textAlign: TextAlign.justify,
          style: TextStyle(fontSize: 10),
        )),
      ),
    );
  }
}
