import 'package:flutter/material.dart';
import 'package:socket_testing/presentation/home.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Socket testing',
      home: Home(),
    );
  }
}
