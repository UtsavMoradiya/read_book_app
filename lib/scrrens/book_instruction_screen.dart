import 'package:flutter/material.dart';

class BookInstructionScreen extends StatefulWidget {
  const BookInstructionScreen({Key? key}) : super(key: key);

  @override
  State<BookInstructionScreen> createState() => _BookInstructionScreenState();
}

class _BookInstructionScreenState extends State<BookInstructionScreen> {
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
        actions: const [
          Image(
            image: AssetImage("assets/images/share.png"),
          ),
        ],
      ),
      body: SafeArea(
        top: true,
        bottom: true,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: width / 25, right: width / 25),
            child: Column(
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
              ],
            ),
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
