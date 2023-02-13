import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyaccountScreen extends StatefulWidget {
  const MyaccountScreen({Key? key}) : super(key: key);

  @override
  State<MyaccountScreen> createState() => _MyaccountScreenState();
}

class _MyaccountScreenState extends State<MyaccountScreen> {
  List<String> textdata = [
    "A Mother Like Mine ",
    "Orphan Train Trials",
    "Daughters of War",
    "A Family Affair",
  ];
  List<String> datedata = [
    "17 Feb 2019 ",
    "24 Dec 2018",
    "Daughters of War",
    "A Family Affair",
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    double text = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0XFF2EBBC3),
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        centerTitle: true,
        title: const Text("My Account"),
      ),
      body: SafeArea(
        top: true,
        bottom: true,
        child: Stack(
          children: [
            Container(
              height: height / 2.7,
              width: double.infinity,
              color: const Color(0XFF2EBBC3),
              child: Column(
                children: [
                  Text(
                    "Balance",
                    style: TextStyle(color: Colors.white, fontSize: text * 13),
                  ),
                  Text(
                    "65.00＄",
                    style: TextStyle(color: Colors.white, fontSize: text * 40),
                  ),
                  SizedBox(
                    height: height / 20,
                  ),
                  Container(
                    height: height / 20,
                    width: width / 2,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                      child: Text(
                        "Deposit",
                        style: TextStyle(
                          color: Color(0xFF2EBBC3),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height / 20,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.yellow,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
