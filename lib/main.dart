import 'package:flutter/material.dart';
import 'trusted_poeple.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trusted People',
      debugShowCheckedModeBanner: false,
      home: trusted_poeple(),
    );
  }
}
