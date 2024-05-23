import 'package:flutter/material.dart';

class DasarWidgetDanLifecycle extends StatefulWidget {
  const DasarWidgetDanLifecycle({super.key});

  @override
  State<DasarWidgetDanLifecycle> createState() =>
      _DasarWidgetDanLifecycleState();
}

class _DasarWidgetDanLifecycleState extends State<DasarWidgetDanLifecycle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dasar Widget & Lifecycle'),
      ),
      body: const Center(),
    );
  }
}
