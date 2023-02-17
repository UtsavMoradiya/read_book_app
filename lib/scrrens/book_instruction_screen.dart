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
    "Irina Iriser",
    "Maryellen",
    "Nancy Sartor",
  ];

  List<String> textdataone = [
    "This book, right off the bat, has two of my favourite things going for it. It's a historical fiction read (one of my...",
    "This book takes two stories from different decades told in alternating chapters and deftly ties them together so...",
    "The Pieces We Keep is a fascinating tale of the pain of loss, mother's love, the power of an innocent child, the....",
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
                            const Text("Facebook",
                                style: TextStyle(color: Colors.grey)),
                            SizedBox(width: width / 25),
                            const Text("Google+",
                                style: TextStyle(color: Colors.grey)),
                            SizedBox(width: width / 11),
                            const Text("Line",
                                style: TextStyle(color: Colors.grey)),
                            SizedBox(width: width / 10),
                            const Text("Linkedln",
                                style: TextStyle(color: Colors.grey)),
                            SizedBox(width: width / 13),
                            const Text("E-mail",
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        SizedBox(
                          height: height / 25,
                        ),
                        Container(
                          height: height / 15,
                          width: width / 1.1,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: const Color(0xFFF0F2F1),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Text("Cancel",
                              style: TextStyle(fontSize: 20)),
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
              SizedBox(height: height / 30),
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
                      Text("By Mary Alice ",
                          style: TextStyle(color: Colors.grey.shade400)),
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
                              style: TextStyle(
                                  fontSize: 8, color: Colors.grey.shade600),
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
                              style: TextStyle(
                                  fontSize: 8, color: Colors.grey.shade600),
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
                  Text("Catalog：The 235 chapter",
                      style: TextStyle(fontSize: 16)),
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
              SizedBox(
                height: height / 50,
              ),
              ListView.builder(
                itemCount: imagedata.length,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => ListTile(
                  trailing: Image.asset("assets/images/hartimage.png"),
                  leading: Image.asset(imagedata[index]),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: height / 80),
                      Text(
                        textdata[index],
                        style: const TextStyle(color: Color(0xFF8E8E93)),
                      ),
                      SizedBox(
                        height: height / 80,
                      ),
                      Text(
                        textdataone[index],
                        style: const TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: height / 40),
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
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Container(
                        height: 550,
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: width / 22, right: width / 22),
                          child: Column(
                            children: [
                              SizedBox(height: height / 50),
                              Row(
                                children: [
                                  SizedBox(width: width / 2.8),
                                  const Text("Payment",
                                      style: TextStyle(fontSize: 20)),
                                  SizedBox(width: width / 3.6),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Icon(Icons.close,
                                        color: Colors.grey),
                                  ),
                                ],
                              ),
                              SizedBox(height: height / 50),
                              Divider(
                                height: 1,
                                color: Colors.grey.shade300,
                              ),
                              SizedBox(height: height / 35),
                              Container(
                                height: height / 10,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    borderRadius: BorderRadius.circular(15)),
                                child: Row(
                                  children: [
                                    SizedBox(width: width / 20),
                                    Image.asset("assets/images/book.png",
                                        scale: 2.2),
                                    SizedBox(width: width / 20),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        // SizedBox(
                                        //   height: height / 80,
                                        // ),
                                        Text("The pieces we keep",
                                            style: TextStyle(fontSize: 18)),
                                        Text("Mary Alice ",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 16)),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: height / 40,
                              ),
                              const Text("Sub Total",
                                  style: TextStyle(color: Colors.grey)),
                              const Text(
                                "\7.50＄",
                                style: TextStyle(
                                    color: Color(0xFF2EBBC3),
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: height / 45),
                              Divider(
                                height: 1,
                                color: Colors.grey.shade300,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(height: height / 20),
                                  Text("Discount",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 18)),
                                  Text("40%"),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(height: height / 20),
                                  Text("actual payment",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 18)),
                                  Text("＄4.50%",
                                      style: TextStyle(
                                        color: Color(0xFFFCB622),
                                      )),
                                ],
                              ),
                              SizedBox(height: 5),
                              Divider(
                                height: 1,
                                color: Colors.grey.shade300,
                              ),
                              SizedBox(height: height / 35),
                              Container(
                                height: height / 15,
                                width: width / 1.1,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Color(0xFF2EBBC3),
                                    borderRadius: BorderRadius.circular(10)),
                                child: const Text(
                                  "Submit",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Color(0xFFFFFFFF),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                child: Container(
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
