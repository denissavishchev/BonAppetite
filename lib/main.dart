import 'package:bon_appetite/dishes_widget.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(BonAppetite());
}

class BonAppetite extends StatelessWidget {
  const BonAppetite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      routes: {
        '/home_page': (context) => const MyHomePage(),
        '/dishes_widget': (context) => Dishes(),
      },
      initialRoute: '/home_page',
      // debugShowCheckedModeBanner: false,
      // home: MyHomePage(),
    );
  }
}
