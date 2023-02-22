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
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/images/mask3.png"),
              SizedBox(
                height: height / 60,
              ),
              const Text(
                "The Orphan...",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(
                height: 3,
              ),
              const Text(
                "Shirley Dickson",
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/images/mask4.png"),
              SizedBox(
                height: height / 60,
              ),
              const Text(
                "Daughters...",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(
                height: 3,
              ),
              const Text(
                "Lizzie Page",
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/images/mask5.png"),
              SizedBox(
                height: height / 60,
              ),
              const Text(
                "The Runaw...",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(
                height: 3,
              ),
              const Text(
                "Sandy Taylor",
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
