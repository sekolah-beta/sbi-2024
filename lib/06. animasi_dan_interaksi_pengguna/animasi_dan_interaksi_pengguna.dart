import 'package:flutter/material.dart';
import 'package:sbi_2024/06.%20animasi_dan_interaksi_pengguna/action/common_button.dart';
import 'package:sbi_2024/06.%20animasi_dan_interaksi_pengguna/action/floating_action_button.dart';
import 'package:sbi_2024/06.%20animasi_dan_interaksi_pengguna/action/gesture_detector.dart';
import 'package:sbi_2024/06.%20animasi_dan_interaksi_pengguna/action/icon_button.dart';
import 'package:sbi_2024/06.%20animasi_dan_interaksi_pengguna/action/segmented_button.dart';
import 'package:sbi_2024/06.%20animasi_dan_interaksi_pengguna/form_input/autocomplete.dart';
import 'package:sbi_2024/06.%20animasi_dan_interaksi_pengguna/form_input/checkbox.dart';
import 'package:sbi_2024/06.%20animasi_dan_interaksi_pengguna/form_input/datepicker.dart';
import 'package:sbi_2024/06.%20animasi_dan_interaksi_pengguna/form_input/dropdown_button.dart';
import 'package:sbi_2024/06.%20animasi_dan_interaksi_pengguna/form_input/radio_button.dart';
import 'package:sbi_2024/06.%20animasi_dan_interaksi_pengguna/form_input/switch.dart';
import 'package:sbi_2024/06.%20animasi_dan_interaksi_pengguna/form_input/textfield.dart';
import 'package:sbi_2024/06.%20animasi_dan_interaksi_pengguna/info/info.dart';
import 'package:sbi_2024/06.%20animasi_dan_interaksi_pengguna/scrolling/custom_scroll_view.dart';
import 'package:sbi_2024/06.%20animasi_dan_interaksi_pengguna/scrolling/gridview.dart';
import 'package:sbi_2024/06.%20animasi_dan_interaksi_pengguna/scrolling/listview.dart';
import 'package:sbi_2024/06.%20animasi_dan_interaksi_pengguna/scrolling/single_child_scroll_view.dart';

class AnimasiDanInteraksiPengguna extends StatefulWidget {
  const AnimasiDanInteraksiPengguna({super.key});

  @override
  State<AnimasiDanInteraksiPengguna> createState() =>
      _AnimasiDanInteraksiPenggunaState();
}

class _AnimasiDanInteraksiPenggunaState
    extends State<AnimasiDanInteraksiPengguna> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animasi & Interaksi Pengguna'),
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
                    return const DropdownButtonScreen();
                  }));
                },
              ),
            ),
            Card(
              child: ListTile(
                title: const Text('Checkbox'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (builder) {
                    return const CheckboxScreen();
                  }));
                },
              ),
            ),
            Card(
              child: ListTile(
                title: const Text('RadioButton'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (builder) {
                    return const RadioButtonScreen();
                  }));
                },
              ),
            ),
            Card(
              child: ListTile(
                title: const Text('Autocomplete'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (builder) {
                    return const AutoCompleteScreen();
                  }));
                },
              ),
            ),
            Card(
              child: ListTile(
                title: const Text('DatePicker'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (builder) {
                    return const DatePickerScreen();
                  }));
                },
              ),
            ),
            Card(
              child: ListTile(
                title: const Text('Switch'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (builder) {
                    return const SwitchScreen();
                  }));
                },
              ),
            ),
            const SizedBox(
              height: 15,
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
            Card(
              child: ListTile(
                title: const Text('FloatingActionButton'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (builder) {
                    return const FloatingActionButtonScreen();
                  }));
                },
              ),
            ),
            Card(
              child: ListTile(
                title: const Text('IconButton'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (builder) {
                    return const IconButtonScreen();
                  }));
                },
              ),
            ),
            Card(
              child: ListTile(
                title: const Text('SegmentedButton'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (builder) {
                    return const SegmentedButtonScreen();
                  }));
                },
              ),
            ),
            Card(
              child: ListTile(
                title: const Text('GestureDetector'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (builder) {
                    return const GestureDetectorScreen();
                  }));
                },
              ),
            ),
            const SizedBox(
              height: 15,
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
            const SizedBox(
              height: 15,
            ),
            const Text('Info',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            Card(
              child: ListTile(
                title: const Text('Info'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (builder) {
                    return const InfoScreen();
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
