import 'package:flutter/material.dart';

class CoupenUnused extends StatefulWidget {
  const CoupenUnused({Key? key}) : super(key: key);

  @override
  State<CoupenUnused> createState() => _CoupenUnusedState();
}

class _CoupenUnusedState extends State<CoupenUnused> {
  List data = [];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    double text = MediaQuery.of(context).textScaleFactor;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: SafeArea(
            child: Padding(
          padding: EdgeInsets.only(left: width / 18, right: width / 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height / 25),
              Padding(
                padding: EdgeInsets.only(left: width / 35, right: width / 30),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/back.png",
                    ),
                    SizedBox(
                      width: width / 5,
                    ),
                    const Text(
                      "Coupen",
                      style: TextStyle(
                        fontSize: 17,
                        // fontFamily: 'Roboto',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height / 40,
              ),
              Container(
                height: height / 25,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(
                  color: Colors.blue,
                )),
                child: TabBar(
                  indicator: BoxDecoration(
                    color: Colors.blue,
                  ),
                  tabs: const [
                    Tab(
                      text: "Unused",
                    ),
                    Tab(
                      text: "used",
                    ),
                    Tab(
                      text: "Expaired",
                    ),
                  ],
                ),
              ),
              ListView.builder(
                physics: FixedExtentScrollPhysics(),
                itemCount: 20,
                scrollDirection: Axis.vertical,
                //reverse: true,
                controller: ScrollController(),
                itemBuilder: (context, index) => Container(
                  height: 70,
                  width: 70,
                  color: Colors.green,
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "$index--------SkillQode",
                    style: TextStyle(
                      color: Colors.brown,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
