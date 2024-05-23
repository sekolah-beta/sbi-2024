import 'package:flutter/material.dart';
import 'package:sbi_2024/06.%20animasi_dan_interaksi_pengguna/animasi_dan_interaksi_pengguna.dart';
import 'package:sbi_2024/03.%20dasar_widget_dan_lifecycle/dasar_widget_dan_lifecycle.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SBI: Animasi dan Interaksi Pengguna',
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
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              child: ListTile(
                title: const Text('Dasar widget & Lifecycle'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (builder) {
                    return const DasarWidgetDanLifecycle();
                  }));
                },
              ),
            ),
            Card(
              child: ListTile(
                title: const Text('Animasi & Interaksi Pengguna'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (builder) {
                    return const AnimasiDanInteraksiPengguna();
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
