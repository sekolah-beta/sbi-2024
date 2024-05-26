import 'package:flutter/material.dart';

class GridViewScreen extends StatefulWidget {
  const GridViewScreen({super.key});

  @override
  State<GridViewScreen> createState() => _GridViewScreenState();
}

class _GridViewScreenState extends State<GridViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView'),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xFFda1e3d),
      ),
      backgroundColor: const Color(0xFFda1e3d),
      body: GridView.builder(
          padding: const EdgeInsets.all(20),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 5, crossAxisSpacing: 5),
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return const Card(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                    "Lorem do adipisicing laborum magna fugiat amet adipisicing excepteur consequat aute."),
              ),
            );
          }),
    );
  }
}
