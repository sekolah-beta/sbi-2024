import 'package:flutter/material.dart';

class SwitchScreen extends StatefulWidget {
  const SwitchScreen({super.key});

  @override
  State<SwitchScreen> createState() => _SwitchScreenState();
}

class _SwitchScreenState extends State<SwitchScreen> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Switch'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SwitchListTile(
              value: isActive,
              title: Text(isActive ? 'Active' : 'Inactive'),
              onChanged: (value) {
                setState(() {
                  isActive = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
