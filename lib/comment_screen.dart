import 'package:flutter/material.dart';

class CommentScreen extends StatefulWidget {
  const CommentScreen({Key? key}) : super(key: key);

  @override
  State<CommentScreen> createState() => _CommentScreenState();
}

class _CommentScreenState extends State<CommentScreen> {
  List<String> imagedata = [
    "assets/images/imageone.png",
    "assets/images/imagethree.png",
    "assets/images/imagetwo.png",
  ];
  List<String> imagedataone = [
    "assets/images/treeimage.png",
    "assets/images/fellimage.png",
    "assets/images/reposibleimage.png",
  ];
  List<String> textdata = [
    "Catherine",
    "Malcolm",
    "Laura Rosell",
  ];
  List<String> numberdata = [
    "2",
    "14",
    "9",
  ];
  List<String> datedata = [
    "2019-03-12",
    "2019-03-12",
    "2019-03-12",
  ];
  List<String> textdataone = [
    "When I ordered this book I did not\nrealize the author wasJanne linghurst,\nbut I soon realized it was her. ",
    "I liked the story,  It seems a recurring\ntheme that a child must die in most of\nher stories. ",
    "I bought this memoir based on the\nrecommendation from a friend. I felt like\nI was struggling with some things. ",
  ];
  List<String> textdatatwo = [
    "The Hidden Life of Trees",
    "And Then He Fell",
    "Rethinking Possible: A Mem...",
  ];
  List<String> textdatathree = [
    "Jane llinghurst",
    "Kate Hewitt",
    "Rebecca Faye Smith Galli",
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
          "Comment",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: SafeArea(
        top: true,
        bottom: true,
        child: ListView.builder(
          itemCount: imagedata.length,
          itemBuilder: (context, index) => ListTile(
            // trailing: Image.asset("assets/images/hartimage.png"),
            leading: Image.asset(imagedata[index]),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      textdata[index],
                      style: const TextStyle(color: Color(0xFF8E8E93)),
                    ),
                    Row(
                      children: [
                        Text(
                          numberdata[index],
                          style: TextStyle(color: Color(0XFF8E8E93)),
                        ),
                        SizedBox(
                          width: width / 32,
                        ),
                        Image.asset("assets/images/hartimage.png"),
                      ],
                    )
                  ],
                ),
                Text(
                  datedata[index],
                  style: const TextStyle(color: Color(0xFFC7C7CC)),
                ),
                SizedBox(
                  height: height / 83,
                ),
                Text(textdataone[index]),
                SizedBox(
                  height: height / 40,
                ),
                Container(
                  height: height / 10,
                  width: width / 1,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF1F2F3),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: height / 65, left: width / 20),
                        child: Image.asset(imagedataone[index]),
                      ),
                      SizedBox(
                        width: width / 35,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(textdatatwo[index]),
                          Text(
                            textdatathree[index],
                            style: const TextStyle(color: Color(0xFFC7C7CC)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height / 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
