import 'package:flutter/material.dart';

const List<String> list = <String>[
  "Avanza",
  "Inova",
  "Pajero Sport",
  "Expander"
];

class DropdownButtonScreen extends StatefulWidget {
  const DropdownButtonScreen({super.key});

  @override
  State<DropdownButtonScreen> createState() => _DropdownButtonScreenState();
}

class _DropdownButtonScreenState extends State<DropdownButtonScreen> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DropdownButton'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            DropdownButtonFormField<String>(
              value: dropdownValue,
              icon: const Icon(Icons.expand_more),
              elevation: 16,
              style: const TextStyle(color: Colors.deepPurple),
              decoration: const InputDecoration(
                  border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              )),
              onChanged: (String? value) {
                // This is called when the user selects an item.
                setState(() {
                  dropdownValue = value!;
                });
              },
              items: list.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
