import 'package:flutter/material.dart';

class AutoCompleteScreen extends StatefulWidget {
  const AutoCompleteScreen({super.key});

  @override
  State<AutoCompleteScreen> createState() => _AutoCompleteScreenState();
}

class _AutoCompleteScreenState extends State<AutoCompleteScreen> {
  final List<String> _kOptions = <String>[
    'Avanza',
    'Inova',
    'Pajero Sport',
    'Expander',
    'Jazz',
    'Ionic',
    'Palisade',
    'Civic',
    'Ayla',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AutoComplete'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Autocomplete<String>(
              fieldViewBuilder: (context, textEditingController, focusNode,
                  onFieldSubmitted) {
                return TextField(
                  controller: textEditingController,
                  focusNode: focusNode,
                  onSubmitted: (value) => onFieldSubmitted,
                  decoration: const InputDecoration(hintText: 'Search...'),
                );
              },
              optionsBuilder: (TextEditingValue textEditingValue) {
                if (textEditingValue.text == '') {
                  return const Iterable<String>.empty();
                }
                return _kOptions.where((String option) {
                  return option
                      .toLowerCase()
                      .contains(textEditingValue.text.toLowerCase());
                });
              },
              onSelected: (String selection) {
                debugPrint('You just selected $selection');
              },
            ),
          ],
        ),
      ),
    );
  }
}
