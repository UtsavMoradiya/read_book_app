import 'package:flutter/material.dart';
import 'package:read_book_app/scrrens/alert_diloge_screen.dart';
import 'package:read_book_app/scrrens/artical_page_screen.dart';
import 'package:read_book_app/scrrens/coupen_unused.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AlertDilogeScreen(),
    );
  }
}
