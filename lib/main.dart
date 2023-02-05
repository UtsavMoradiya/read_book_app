import 'package:flutter/material.dart';
import 'package:read_book_app/common/button.dart';
import 'package:read_book_app/scrrens/my_card_screen.dart';

import 'comment_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyCardScreen(),
    );
  }
}
