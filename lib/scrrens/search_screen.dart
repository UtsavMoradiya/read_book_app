import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    double text = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      // appBar: AppBar(),
      body: SafeArea(
        top: true,
        bottom: true,
        child: Padding(
          padding: EdgeInsets.only(left: width / 18, right: width / 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: height / 30),
              Row(
                children: [
                  Container(
                    width: width / 1.5,
                    height: height / 20,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.search),
                        suffixIcon: const Icon(Icons.mic),
                        hintText: "search",
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Colors.grey.shade300,
                        contentPadding: const EdgeInsets.symmetric(vertical: 5),
                      ),
                    ),
                  ),
                  SizedBox(width: width / 17),
                  TextButton(
                    onPressed: () {
                      // Navigator.pop(context);
                    },
                    child: const Text(
                      "Cancel",
                      style: TextStyle(
                        color: Color(0xFF2EBBC3),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: height / 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "History",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.delete_forever,
                    color: Color(0xFF2EBBC3),
                  ),
                ],
              ),
              SizedBox(height: height / 22),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: height / 25,
                    width: width / 4.5,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Text(
                      "Business",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Container(
                    height: height / 25,
                    width: width / 3.5,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Text(
                      "Science Fiction",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Container(
                    height: height / 25,
                    width: width / 5,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Text(
                      "book",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
              SizedBox(height: height / 70),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: height / 25,
                    width: width / 4.5,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Text(
                      "Romance",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Container(
                    height: height / 25,
                    width: width / 6,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Text(
                      "child",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Container(
                    height: height / 25,
                    width: width / 2.5,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Text(
                      "Colony of the Lost",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
              SizedBox(height: height / 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "History",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.refresh,
                    color: Colors.grey,
                  ),
                ],
              ),
              SizedBox(height: height / 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("assets/images/book1.png"),
                      SizedBox(
                        height: height / 80,
                      ),
                      const Text(
                        "Good Man ...",
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      const Text(
                        "McQuestion",
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
                      Image.asset("assets/images/book2.png"),
                      SizedBox(
                        height: height / 80,
                      ),
                      const Text(
                        "Ask Me to...",
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      const Text(
                        "Terri Osburn",
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
                      Image.asset("assets/images/book3.png"),
                      SizedBox(
                        height: height / 80,
                      ),
                       Text(
                        "A Dream to...",
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      const Text(
                        "Kay Correll",
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
    );
  }
}
