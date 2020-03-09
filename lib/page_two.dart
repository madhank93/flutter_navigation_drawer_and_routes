import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  final String text;

  PageTwo(this.text);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(text),
      ),
      body: Text(text),
    );
  }
}
