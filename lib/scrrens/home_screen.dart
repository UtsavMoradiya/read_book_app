import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    double text = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: true,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: width / 25, right: width / 25),
            child: Column(
              children: [
                SizedBox(height: height / 40),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: const Icon(Icons.mic),
                    hintText: "search",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    filled: true,
                    fillColor: Colors.grey.shade300,
                    contentPadding: const EdgeInsets.symmetric(vertical: 5),
                  ),
                ),
                SizedBox(
                  height: height / 30,
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Reading",
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: width / 2.1,
                    ),
                    const Text(
                      "View all",
                    ),
                    const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.grey,
                      size: 15,
                    ),
                  ],
                ),
                SizedBox(
                  height: height / 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/images/mask0.png"),
                        SizedBox(
                          height: height / 60,
                        ),
                        const Text(
                          "The beach ...",
                          style: TextStyle(fontSize: 16),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        const Text(
                          "Mary Alice ",
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
                        Image.asset("assets/images/mask1.png"),
                        SizedBox(
                          height: height / 60,
                        ),
                        const Text(
                          "The life-ch...",
                          style: TextStyle(fontSize: 16),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        const Text(
                          "MarieKondō",
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
                        Image.asset("assets/images/mask2.png"),
                        SizedBox(
                          height: height / 60,
                        ),
                        const Text(
                          "Sold on a...",
                          style: TextStyle(fontSize: 16),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        const Text(
                          "Kristina Morris",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey,
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
              Image.asset("assets/images/groud.png", color: Colors.blue),
              Image.asset("assets/images/path.png"),
              Image.asset("assets/images/category.png"),
              Image.asset("assets/images/Profilesone.png"),
            ],
          ),
        ),
        onClosing: () {},
      ),
    );
  }
}
