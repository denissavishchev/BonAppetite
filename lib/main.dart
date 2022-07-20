import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(customButtons());
}

class customButtons extends StatelessWidget {
  const customButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
