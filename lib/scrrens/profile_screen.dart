import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List<String> data = [
    "Account",
    "My Bookshelf",
    "Reading Record",
    "My Cart",
  ];
  List<String> editdata = [
    "Night Mood",
    "History",
    "Setting",
    "Healp and feelback",
  ];
  List<String> imagedata = [
    "assets/images/accountimage.png",
    "assets/images/bookshelfimage.png",
    "assets/images/note.png",
    "assets/images/icon.png",
  ];
  List<String> icondata = [
    "assets/images/nighticon.png",
    "assets/images/historyicon.png",
    "assets/images/settingicon.png",
    "assets/images/helpicon.png",
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    double text = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF2EBBC3),
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        centerTitle: true,
        title: const Text(
          "profile",
          style: TextStyle(color: Colors.white),
        ),
        elevation: 0,
        actions: const [
          Icon(
            Icons.mail,
            color: Colors.white,
          )
        ],
      ),
      body: SafeArea(
        top: true,
        bottom: true,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: height / 3,
                    color: Colors.white,
                  ),
                  Container(
                    height: height / 5.5,
                    width: double.infinity,
                    color: const Color(0xFF2EBBC3),
                  ),
                  Positioned(
                    top: height / 10,
                    left: width / 12,
                    child: Container(
                      height: height / 4.5,
                      width: width / 1.2,
                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          SizedBox(
                            height: height / 12,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: width / 10,
                              ),
                              Text(
                                "Limpitsouni",
                                style: TextStyle(color: Colors.black, fontSize: text * 25),
                              ),
                              SizedBox(
                                width: width / 10,
                              ),
                              Container(
                                height: height / 25,
                                width: width / 4.5,
                                decoration: BoxDecoration(
                                  // color: Color(0xFF2EBBC3),
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(color: const Color(0xFF2EBBC3)),
                                ),
                                child: Center(
                                  child: Text(
                                    "Edit",
                                    style: TextStyle(color: const Color(0xFF2EBBC3), fontSize: text * 20),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Expanded(child: Divider()),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "135",
                                style: TextStyle(color: Colors.black, fontSize: text * 25),
                              ),
                              Text(
                                "209",
                                style: TextStyle(color: Colors.black, fontSize: text * 25),
                              ),
                              Text(
                                "26K",
                                style: TextStyle(color: Colors.black, fontSize: text * 25),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "Comments",
                                style: TextStyle(color: const Color(0xFF8E8E93), fontSize: text * 20, fontWeight: FontWeight.w300),
                              ),
                              Text(
                                "Following",
                                style: TextStyle(color: const Color(0xFF8E8E93), fontSize: text * 20, fontWeight: FontWeight.w300),
                              ),
                              Text(
                                "Followers",
                                style: TextStyle(color: const Color(0xFF8E8E93), fontSize: text * 20, fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: width / 6.5,
                    top: height / 20,
                    child: Image.asset("assets/images/Avatar.png"),
                  ),
                ],
              ),
              SizedBox(
                height: height / 20,
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: imagedata.length,
                itemBuilder: (context, index) => ElevatedButton(
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white)),
                  onPressed: () {},
                  child: ListTile(
                    leading: Image.asset(imagedata[index]),
                    title: Text(data[index]),
                    trailing: const Icon(Icons.navigate_next),
                  ),
                ),
              ),
              const Divider(
                thickness: 1,
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: icondata.length,
                itemBuilder: (context, index) => ElevatedButton(
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white)),
                  onPressed: () {},
                  child: ListTile(
                    leading: Image.asset(icondata[index]),
                    title: Text(editdata[index]),
                    trailing: const Icon(Icons.navigate_next),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: BottomSheet(
        builder: (context) => Container(
          height: 70,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset("assets/images/groud.png"),
              Image.asset("assets/images/path.png"),
              Image.asset("assets/images/category.png"),
              Image.asset("assets/images/Profiles.png"),
            ],
          ),
        ),
        onClosing: () {},
      ),
    );
  }
}
