import 'package:flutter/material.dart';

class ArticalPageScreen extends StatefulWidget {
  const ArticalPageScreen({Key? key}) : super(key: key);

  @override
  State<ArticalPageScreen> createState() => _ArticalPageScreenState();
}

class _ArticalPageScreenState extends State<ArticalPageScreen> {
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
        title: const Center(
            child: Text("The pieces we kee...",
                style: TextStyle(color: Colors.black, fontSize: 18))),
        elevation: 0,
        actions: [
          const Icon(
            Icons.settings,
            color: Color(0xFF2EBBC3),
          )
        ],
      ),
      body: SafeArea(
        top: true,
        bottom: true,
        child: Padding(
          padding: EdgeInsets.only(right: width / 18, left: width / 18),
          child: Column(
            children: [
              SizedBox(height: height / 25),
              const Text(
                "The sound of her name, in that deep familiar timbre, swept through Audra like a winter gale. Her lungs pulled a sharp breath. Her forearms prickled. In line at the airport gate, she clutched the shoulder strap of her carry-on, a makeshift lifeline, and turned toward the voice.",
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(height: height / 25),
              const Text(
                "“Babe, you want anything else?” the man in a floral-print shirt hollered from the coffee stand.“Andrea?”  “Just the vanilla latte,” a woman replied from a nearby table, then resumed chatting on her phone.",
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(height: height / 25),
              const Text(
                "For an eternal moment Audra Hughes remained frozen. She braced against the aftershock of hope, like the rush of a near car collision, when blood rages in your ears and every pore yawns open. Even now, two years after her husband’s death, she hadn’t conquered the reflex, nor the guilt. But in time she would, and today’s trip would serve as a major step, regardless of others’ opinions.",
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
