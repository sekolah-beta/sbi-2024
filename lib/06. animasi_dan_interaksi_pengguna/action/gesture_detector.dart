import 'package:flutter/material.dart';

class GestureDetectorScreen extends StatefulWidget {
  const GestureDetectorScreen({super.key});

  @override
  State<GestureDetectorScreen> createState() => _GestureDetectorScreenState();
}

class _GestureDetectorScreenState extends State<GestureDetectorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GestureDetector'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            GestureDetector(
              onLongPress: () {},
              onTap: () {},
              onDoubleTap: () {},
              child: const Card(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                      'Lorem ipsum dolor sit amet, lorem ipsum dolor sit amet, , lorem ipsum dolor sit amet, , lorem ipsum dolor sit amet, , lorem ipsum dolor sit amet'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
