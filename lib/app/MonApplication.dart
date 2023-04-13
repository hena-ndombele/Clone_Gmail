import 'package:flutter/material.dart';
import 'package:application_liste_message/views/Intro.dart';


class MonApplication extends StatelessWidget {
  const MonApplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: splashscreen(),
    );
  }
}
