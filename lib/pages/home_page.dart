import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hi, I\'m the home page'),
      ),
      body: Container(
        child: Center(
          child: Text('Hi, I\'m the home page'),
        ),
      ),
    );
  }
}
