import 'package:flutter/material.dart';

class AnimationScreen extends StatefulWidget {
  const AnimationScreen({super.key});

  @override
  _AnimationScreenState createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen> {
  double containerWidth = 100.0;
  double containerHeight = 100.0;
  Color containerColor = Colors.red;

  void changeContainer() {
    setState(() {
      containerWidth = 200.0;
      containerHeight = 200.0;
      containerColor = Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedContainer '),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedContainer(
              duration: const Duration(seconds: 1),
              width: containerWidth,
              height: containerHeight,
              color: containerColor,
              curve: Curves.easeInBack,
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: changeContainer,
              child: const Text('Change Container'),
            ),
          ],
        ),
      ),
    );
  }
}
