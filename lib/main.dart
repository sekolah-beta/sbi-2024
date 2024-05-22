import 'package:flutter/material.dart';
import 'package:flutter_basic/06.%20animasi_dan_interaksi_pengguna/action/common_button.dart';
import 'package:flutter_basic/06.%20animasi_dan_interaksi_pengguna/form_input/text_field.dart';
import 'package:flutter_basic/06.%20animasi_dan_interaksi_pengguna/scrolling/custom_scroll_view.dart';
import 'package:flutter_basic/06.%20animasi_dan_interaksi_pengguna/scrolling/gridview.dart';
import 'package:flutter_basic/06.%20animasi_dan_interaksi_pengguna/scrolling/listview.dart';
import 'package:flutter_basic/06.%20animasi_dan_interaksi_pengguna/scrolling/single_child_scroll_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sekolah Beta 2024',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
      // home: const ButtonTypesExample(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sekolah Beta 2024'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Form Input',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            Card(
              child: ListTile(
                title: const Text('TextField'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (builder) {
                    return const TextFieldScreen();
                  }));
                },
              ),
            ),
            Card(
              child: ListTile(
                title: const Text('DropdownButton'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (builder) {
                    return const TextFieldScreen();
                  }));
                },
              ),
            ),
            const Text('Action',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            Card(
              child: ListTile(
                title: const Text('Common Button'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (builder) {
                    return const CommonButtonScreen();
                  }));
                },
              ),
            ),
            const Text('Scrolling',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            Card(
              child: ListTile(
                title: const Text('ListView'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (builder) {
                    return const ListViewScreen();
                  }));
                },
              ),
            ),
            Card(
              child: ListTile(
                title: const Text('GridView'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (builder) {
                    return const GridViewScreen();
                  }));
                },
              ),
            ),
            Card(
              child: ListTile(
                title: const Text('CustomScrollView'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (builder) {
                    return const CustomScrollViewScreen();
                  }));
                },
              ),
            ),
            Card(
              child: ListTile(
                title: const Text('SingleChildScrollView'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (builder) {
                    return const SingleChildScrollViewScreen();
                  }));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
