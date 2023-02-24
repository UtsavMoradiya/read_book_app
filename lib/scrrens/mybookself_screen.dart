import 'package:flutter/material.dart';

class MyBookSelfScreen extends StatefulWidget {
  const MyBookSelfScreen({Key? key}) : super(key: key);

  @override
  State<MyBookSelfScreen> createState() => _MyBookSelfScreenState();
}

class _MyBookSelfScreenState extends State<MyBookSelfScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    double text = MediaQuery.of(context).textScaleFactor;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        actions: [Image.asset("assets/images/Show-List.png")],
        centerTitle: true,
        title: const Text(
          "Bookshelf",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
      ),
      // body: ,
    );
  }
}
