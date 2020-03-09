import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  final String text;

  PageOne(this.text);

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
