import 'dart:developer';
import 'dart:isolate';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  void performSomeCode() async {
    Future.delayed(Duration(milliseconds: 1000), () {
      print('The event in future!');
    });
    print('The event!');
    Future.delayed(Duration(milliseconds: 1000), () {
      return 100;
    })
        .then((value) => Future.delayed(
            Duration(seconds: 2), () => print("This is the $value'th event!")))
        .whenComplete(() => print('The very last event in future!'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sockets'),
      ),
      body: Center(
        child: ListView(
          children: List.generate(5, (index) => Container()),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          log('You have pressed floating action button');
          return performSomeCode();
        },
        child: Icon(Icons.download_outlined),
      ),
    );
  }
}
