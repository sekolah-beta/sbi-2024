import 'package:flutter/material.dart';
import 'package:sbi_2024/shared/widgets/text_field_widget.dart';

class SingleChildScrollViewScreen extends StatefulWidget {
  const SingleChildScrollViewScreen({super.key});

  @override
  State<SingleChildScrollViewScreen> createState() =>
      _SingleChildScrollViewScreenState();
}

class _SingleChildScrollViewScreenState
    extends State<SingleChildScrollViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SingleChildScrollView'),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xFFda1e3d),
      ),
      backgroundColor: const Color(0xFFda1e3d),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            const Card(
              margin: EdgeInsets.only(bottom: 15),
              child: ListTile(
                title: Text('Item Card'),
                subtitle: Text(
                    'Sit laboris nisi nulla non nulla enim tempor aute adipisicing velit dolor qui labore.'),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: const TextFieldWidget(
                label: 'Name',
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: const TextFieldWidget(
                label: 'Email',
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: const TextFieldWidget(
                label: 'Password',
                obscureText: true,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: CheckboxListTile(
                value: true,
                onChanged: (value) {},
                title: const Text(
                  'Active',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Register'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
