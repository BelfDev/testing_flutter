import 'package:flutter/material.dart';
import 'package:testing_flutter/pages/home_page.dart';

class App extends StatelessWidget {
  const App({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Testing Flutter Apps',
      home: HomePage(),
    );
  }
}
