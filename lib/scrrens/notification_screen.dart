import 'package:flutter/material.dart';
import 'package:read_book_app/common/button.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  List<String> icondata = [
    "assets/images/notificationicon.png",
    "assets/images/likeicon.png",
    "assets/images/commenticon.png",
    "assets/images/dollaricon.png",
    "assets/images/dollaricon.png",
  ];
  List<String> icondataone = [
    "assets/images/three.png",
    "assets/images/nine.png",
    "assets/images/seven.png",
    "assets/images/seven.png",
    "assets/images/eight.png",
  ];
  List<String> textdata = [
    "System notification",
    "Like",
    "Comment",
    "Promotions",
    "Followers",
  ];
  List<String> textdataone = [
    "Tienes un adudo pendiente por ...",
    "Thomas Pageot like your comment",
    "Oleg Milshtein replied your comment",
    "Oleg Milshtein Replied your comment",
    "Dann Petty start follow you",
  ];
  List<String> textdatatwo = [
    "2019-03-24",
    "2019-02-05",
    "O2019-04-18",
    "2018-10-25",
    "2018-09-28",
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    double text = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        actions: [
          Center(
            child: Text(
              "Edit",
              style: TextStyle(color: const Color(0Xff2EBBC3), fontSize: text * 20),
            ),
          )
        ],
        centerTitle: true,
        title: const Text(
          "Notifications",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
        top: true,
        bottom: true,
        child: ListView.builder(
          itemCount: textdata.length,
          itemBuilder: (context, index) => ListTile(
            leading: Image.asset(icondata[index]),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: height / 90,
                ),
                Text(textdata[index]),
                SizedBox(
                  height: height / 90,
                ),
                Text(
                  textdataone[index],
                  style: const TextStyle(color: Color(0xFF8E8E93)),
                ),
                SizedBox(
                  height: height / 60,
                ),
                Text(
                  textdatatwo[index],
                  style: const TextStyle(color: Color(0xFFC7C7CC)),
                ),
              ],
            ),
            trailing: Image.asset(
              icondataone[index],
            ),
          ),
        ),
      ),
    );
  }
}
