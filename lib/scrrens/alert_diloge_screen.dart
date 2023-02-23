import 'package:flutter/material.dart';

class AlertDilogeScreen extends StatefulWidget {
  const AlertDilogeScreen({Key? key}) : super(key: key);

  @override
  State<AlertDilogeScreen> createState() => _AlertDilogeScreenState();
}

class _AlertDilogeScreenState extends State<AlertDilogeScreen> {
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
        child: Column(
          children: [
            SizedBox(height: height / 20),
            Center(
              child: Container(
                height: height / 1.5,
                width: width / 1.1,
                color: Colors.black,
              ),
            ),

             showModalBottomSheet(context: context, builder: (context) {
              return Container(
                height: 160,
                width: double.infinity,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset("assets/images/pic-1.png"),
                        Image.asset("assets/images/pic-2.png"),
                        Image.asset("assets/images/pic-3.png"),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Divider(
                      height: 1,
                      color: Colors.grey.shade300,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "cancel",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        VerticalDivider(
                          color: Colors.grey.shade300,
                          width: 1,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text("share",
                              style: TextStyle(
                                color: Color(0xFF2EBBC3),
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },),
          ],
        ),
      ),
    );
  }
}
