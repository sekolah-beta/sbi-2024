import 'package:flutter/material.dart';

class CommonButtonScreen extends StatefulWidget {
  const CommonButtonScreen({super.key});

  @override
  State<CommonButtonScreen> createState() => _CommonButtonScreenState();
}

class _CommonButtonScreenState extends State<CommonButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Common Button'),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('Elevated')),
            FilledButton(onPressed: () {}, child: const Text('Filled')),
            FilledButton.tonal(
                onPressed: () {}, child: const Text('Filled Tonal')),
            OutlinedButton(onPressed: () {}, child: const Text('Outlined')),
            TextButton(onPressed: () {}, child: const Text('Text')),
          ],
        ),
      ),
    );
  }
}
