import 'package:flutter/material.dart';

class ListViewScreen extends StatefulWidget {
  const ListViewScreen({super.key});

  @override
  State<ListViewScreen> createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView'),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xFFda1e3d),
      ),
      backgroundColor: const Color(0xFFda1e3d),
      body: ListView.builder(
        padding: const EdgeInsets.all(15),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text('Item $index'),
              subtitle: const Text(
                  'Sit laboris nisi nulla non nulla enim tempor aute adipisicing velit dolor qui labore.'),
            ),
          );
        },
      ),
    );
  }
}
