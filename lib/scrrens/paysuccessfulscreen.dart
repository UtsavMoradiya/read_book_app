import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaySuccessfullScreen extends StatefulWidget {
  const PaySuccessfullScreen({Key? key}) : super(key: key);

  @override
  State<PaySuccessfullScreen> createState() => _PaySuccessfullScreenState();
}

class _PaySuccessfullScreenState extends State<PaySuccessfullScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        centerTitle: true,
        title: const Text(
          "Payment",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
      ),
      body: SafeArea(
        top: true,
        bottom: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/successful.png",
            )
          ],
        ),
      ),
    );
  }
}
