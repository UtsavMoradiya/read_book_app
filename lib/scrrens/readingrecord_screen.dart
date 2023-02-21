import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReadindRecordScreen extends StatefulWidget {
  const ReadindRecordScreen({Key? key}) : super(key: key);

  @override
  State<ReadindRecordScreen> createState() => _ReadindRecordScreenState();
}

class _ReadindRecordScreenState extends State<ReadindRecordScreen> {
  List<String> imageData = [
    "assets/images/goodmanbookimage.png",
    "assets/images/myjobbookimage.png",
    "assets/images/motherlikemanbookimage.png",
    "assets/images/marrycopasybookimage.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        centerTitle: true,
        title: const Text(
          "Reading Record ",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
