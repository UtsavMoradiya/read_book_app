import 'package:flutter/material.dart';

class TransactionRecord extends StatefulWidget {
  const TransactionRecord({Key? key}) : super(key: key);

  @override
  State<TransactionRecord> createState() => _TransactionRecordState();
}

class _TransactionRecordState extends State<TransactionRecord> {
  Map data = {
    "database": [
      {
        "data1": "assets/images/book.png",
        "data2": "Dauters of War",
        "data3": "17 feb 2019",
        "data4": "\$6.00",
      },
      {
        "data1": "assets/images/book.png",
        "data2": "A Mother Like Mine ",
        "data3": "12 Dec 2018",
        "data4": "\$6.00",
      },
      {
        "data1": "assets/images/book.png",
        "data2": "Good Man, Dalton",
        "data3": "18 feb 2019",
        "data4": "\$6.00",
      },
      {
        "data1": "assets/images/book.png",
        "data2": "The pieces we keep",
        "data3": "20 feb 2019",
        "data4": "\$6.00",
      },
      {
        "data1": "assets/images/book.png",
        "data2": "My Job: More People...",
        "data3": "20 feb 2019",
        "data4": "\$6.00",
      },
      {
        "data1": "assets/images/book.png",
        "data2": "Ragnekai Winds",
        "data3": "16 feb 2019",
        "data4": "\$6.00",
      },
      {
        "data1": "assets/images/book.png",
        "data2": "The Secrets We Kee...",
        "data3": "17 feb 2019",
        "data4": "\$6.00",
      },
      {
        "data1": "assets/images/book.png",
        "data2": "The Orphan Sisters",
        "data3": "17 feb 2019",
        "data4": "\$6.00",
      },
    ]
  };
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
        child: Center(
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
                        "Transaction Record",
                        style: TextStyle(
                          fontSize: 17,
                          // fontFamily: 'Roboto',
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: ListView.separated(
                    itemBuilder: (context, index) => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          data["database"][index]["data1"],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              data["database"][index]["data2"],
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              data["database"][index]["data3"],
                              style: TextStyle(color: Color(0xffC7C7CC)),
                            ),
                          ],
                        ),
                        Text(
                          data["database"][index]["data4"],
                          style:
                              TextStyle(color: Color(0xff8E8E93), fontSize: 18),
                        )
                      ],
                    ),
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 20,
                    ),
                    itemCount: data["database"].length,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
