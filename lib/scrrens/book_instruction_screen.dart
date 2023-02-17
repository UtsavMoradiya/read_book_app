import 'package:flutter/material.dart';

class BookInstructionScreen extends StatefulWidget {
  const BookInstructionScreen({Key? key}) : super(key: key);

  @override
  State<BookInstructionScreen> createState() => _BookInstructionScreenState();
}

class _BookInstructionScreenState extends State<BookInstructionScreen> {
  List<String> imagedata = [
    "assets/images/Avatar1.png",
    "assets/images/Avatar2.png",
    "assets/images/Avatar3.png",
  ];

  List<String> imagedataone = [
    "assets/images/Facebook.png",
    "assets/images/Google-+.png",
    "assets/images/Line.png",
    "assets/images/LinkedIN.png",
    "assets/images/Mail.png",
  ];
  List<String> textdata = [
    "Catherine",
    "Malcolm",
    "Laura Rosell",
  ];

  List<String> textdataone = [
    "When I ordered this book I did not\nrealize the author wasJanne linghurst,\nbut I soon realized it was her. ",
    "I liked the story,  It seems a recurring\ntheme that a child must die in most of\nher stories. ",
    "I bought this memoir based on the\nrecommendation from a friend. I felt like\nI was struggling with some things. ",
  ];

  List<String> textdatatwo = [
    "Facebook",
    "Google+",
    "Line",
    "Linkedln",
    "E-mail",
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    double text = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFFFFF),
        leading: Icon(
          Icons.arrow_back_sharp,
          color: Colors.grey.shade800,
        ),
        elevation: 0,
        actions: [
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Container(
                    height: 280,
                    color: Colors.white,
                    child: Column(
                      children: [
                        SizedBox(
                          height: height / 35,
                        ),
                        const Text(
                          "Share the book",
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                        SizedBox(height: height / 25),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: imagedataone
                              .map((value) => Image.asset(
                                    value,
                                    scale: 0.8,
                                  ))
                              .toList(),
                        ),
                        SizedBox(height: height / 70),
                        Row(
                          children: [
                            SizedBox(width: width / 25),
                            const Text("Facebook", style: TextStyle(color: Colors.grey)),
                            SizedBox(width: width / 25),
                            const Text("Google+", style: TextStyle(color: Colors.grey)),
                            SizedBox(width: width / 11),
                            const Text("Line", style: TextStyle(color: Colors.grey)),
                            SizedBox(width: width / 10),
                            const Text("Linkedln", style: TextStyle(color: Colors.grey)),
                            SizedBox(width: width / 13),
                            const Text("E-mail", style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        SizedBox(
                          height: height / 25,
                        ),
                        Container(
                          height: height / 15,
                          width: width / 1.1,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(color: const Color(0xFFF0F2F1), borderRadius: BorderRadius.circular(10)),
                          child: const Text("Cancel", style: TextStyle(fontSize: 20)),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            child: const Image(
              image: AssetImage("assets/images/share.png"),
            ),
          ),
        ],
      ),
      body: SafeArea(
        top: true,
        bottom: true,
        child: SingleChildScrollView(
          padding: EdgeInsets.only(left: width / 25, right: width / 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/images/book.png"),
                  SizedBox(width: width / 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("The pieces we keep"),
                      const SizedBox(height: 8),
                      Text("By Mary Alice ", style: TextStyle(color: Colors.grey.shade400)),
                      SizedBox(
                        height: height / 85,
                      ),
                      Row(
                        children: [
                          Container(
                            height: height / 30,
                            width: width / 4,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(5),
                              ),
                            ),
                            child: Text(
                              "Historical Fiction",
                              style: TextStyle(fontSize: 8, color: Colors.grey.shade600),
                            ),
                          ),
                          SizedBox(width: width / 20),
                          Container(
                            height: height / 30,
                            width: width / 8,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(5),
                              ),
                            ),
                            child: Text(
                              "Sisters",
                              style: TextStyle(fontSize: 8, color: Colors.grey.shade600),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height / 85,
                      ),
                      Image.asset("assets/images/star.png"),
                      SizedBox(
                        height: height / 85,
                      ),
                      const Text(
                        "\$7.50",
                        style: TextStyle(
                          color: Color(0xFF2EBBC3),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: height / 20),
              const Text(
                "Introduction",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: height / 50),
              const Text(
                "In this richly emotional novel inspired by extraordinary\ntrue accounts, New York Times bestselling author Kristina McMorris evokes the depth...Read more",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: height / 30),
              const Divider(
                height: 1,
                color: Colors.grey,
              ),
              SizedBox(height: height / 70),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Catalog：The 235 chapter", style: TextStyle(fontSize: 16)),
                  Icon(
                    Icons.dehaze_rounded,
                    color: Color(0xFF2EBBC3),
                  ),
                ],
              ),
              SizedBox(height: height / 70),
              const Divider(
                height: 1,
                color: Colors.grey,
              ),
              SizedBox(height: height / 70),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Add to bookshlf", style: TextStyle(fontSize: 16)),
                  Icon(
                    Icons.add_box_outlined,
                    color: Color(0xFF2EBBC3),
                  ),
                ],
              ),
              SizedBox(height: height / 70),
              const Divider(
                height: 1,
                color: Colors.grey,
              ),
              SizedBox(height: height / 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Comments",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "write a comment",
                    style: TextStyle(
                      fontSize: 13,
                      color: Color(0xFF2EBBC3),
                    ),
                  ),
                ],
              ),
              ListView.builder(
                itemCount: imagedata.length,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => ListTile(
                  // trailing: Image.asset("assets/images/hartimage.png"),
                  leading: Image.asset(imagedata[index]),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        textdata[index],
                        style: const TextStyle(color: Color(0xFF8E8E93)),
                      ),
                      Text(
                        textdataone[index],
                        style: const TextStyle(color: Color(0xFF8E8E93)),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomSheet(
        builder: (context) => Container(
          height: 70,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: height / 20,
                width: width / 2.4,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: const Color(0xFF2EBBC3),
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: const Text(
                  "Free trials",
                  style: TextStyle(
                    color: Color(0xFF2EBBC3),
                  ),
                ),
              ),
              Container(
                height: height / 20,
                width: width / 2.4,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Color(0xFF2EBBC3),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: const Text(
                  "Buy Now",
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              )
            ],
          ),
        ),
        onClosing: () {},
      ),
    );
  }
}
