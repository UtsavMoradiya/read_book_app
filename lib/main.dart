import 'package:flutter/material.dart';
import 'package:read_book_app/comment_screen.dart';
import 'package:read_book_app/scrrens/artical_page_screen.dart';
import 'package:read_book_app/scrrens/myaccount_screen.dart';
import 'package:read_book_app/scrrens/profile_screen.dart';
import 'package:read_book_app/scrrens/transaction_record.dart';
import 'package:read_book_app/scrrens/user_profile_screen.dart';

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
      home: const ArticalPageScreen(),
    );
  }
}
