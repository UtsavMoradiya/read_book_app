import 'package:flutter/material.dart';

class FollowerScreen extends StatefulWidget {
  const FollowerScreen({Key? key}) : super(key: key);

  @override
  State<FollowerScreen> createState() => _FollowerScreenState();
}

class _FollowerScreenState extends State<FollowerScreen> {
  bool colourChang = false;

  List<String> imageData = [
    "assets/images/dannyrise.png",
    "assets/images/eachalann.png",
    "assets/images/Betty Schwartz.png",
    "assets/images/Sean Potter.png",
    "assets/images/Eugenia.png",
    "assets/images/Jeffrey.png",
    "assets/images/Jane Allen.png",
  ];

  List<String> textData = [
    "Danny Rice",
    "Rachel Ann",
    "Betty Schwartz",
    "Sean Potter",
    "Eugenia",
    "Jeffrey",
    "Jane Allen",
  ];

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
        centerTitle: true,
        title: const Text(
          "Followers",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Container(
              height: height / 18,
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: const Icon(Icons.mic),
                  hintText: "search",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),

                  // borderRadius: BorderRadius.circular(15),
                  filled: true,
                  fillColor: Colors.grey.shade300,
                  // contentPadding: const EdgeInsets.symmetric(vertical: 5),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: imageData.length,
              itemBuilder: (context, index) => ListTile(
                leading: Image.asset(imageData[index]),
                title: Text(textData[index]),
                trailing: GestureDetector(
                  onTap: () {
                    setState(() {
                      colourChang = !colourChang;
                    });
                  },
                  child: Container(
                    height: height / 32,
                    width: width / 5.5,
                    decoration: BoxDecoration(
                      color: colourChang ? Colors.grey.shade300 : Color(0xFF2EBBC3),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Center(
                        child: colourChang
                            ? Text(
                                "unfollow",
                                style: TextStyle(color: Colors.grey),
                              )
                            : Text(
                                "folllow",
                                style: TextStyle(color: Colors.white),
                              )),
                  ),
                ),
              ),
              separatorBuilder: (context, index) => SizedBox(height: height / 30),
            ),
          )
        ],
      ),
    );
  }
}
