import 'package:flutter/material.dart';

class CommonButtonScreen extends StatefulWidget {
  const CommonButtonScreen({super.key});

  @override
  State<CommonButtonScreen> createState() => _CommonButtonScreenState();
}

class _CommonButtonScreenState extends State<CommonButtonScreen> {
  bool isChecked = false;
  bool isChecked2 = false;
  bool isChecked3 = false;

  String gender = 'Laki-laki';
  bool isActive = true;

  List<String> _kOptions = <String>[
    'Avanza',
    'Inova',
    'Pajero Sport',
    'Expander'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFda1e3d),
      appBar: AppBar(
        backgroundColor: Color(0xFFda1e3d),
        title: Text(
          'Home',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.share,
              color: Colors.white,
              size: 30,
            ),
          ),
          const SizedBox(
            width: 10,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // TextFieldWidget(
              //   color: Colors.white,
              //   label: 'Name',
              // ),
              // const SizedBox(
              //   height: 15,
              // ),
              // TextFieldWidget(
              //   color: Colors.white,
              //   label: 'Email',
              // ),
              // CustomDropdown(
              //   data: ["Avanza", "Inova", "Pajero Sport", "Expander"],
              //   label: 'Kendaraan',
              //   color: Colors.white,
              // )
              // Container(
              //     alignment: Alignment.centerLeft,
              //     margin: const EdgeInsets.only(bottom: 6),
              //     child: Text('Makanan Favorit',
              //         style: TextStyle(
              //             color: Colors.white,
              //             fontWeight: FontWeight.bold,
              //             fontSize: 16))),

              // CheckboxListTile(
              //   controlAffinity: ListTileControlAffinity.leading,
              //   value: isChecked,
              //   title: Text('Rendang', style: TextStyle(color: Colors.white)),
              //   onChanged: (value) {
              //     setState(() {
              //       isChecked = value!;
              //     });
              //   },
              // ),
              // CheckboxListTile(
              //   controlAffinity: ListTileControlAffinity.leading,
              //   value: isChecked2,
              //   title:
              //       Text('Nasi Padang', style: TextStyle(color: Colors.white)),
              //   checkColor: Color(0xFFda1e3d),
              //   activeColor: Colors.white,
              //   side: BorderSide(color: Colors.white, width: 2),
              //   onChanged: (value) {
              //     setState(() {
              //       isChecked2 = value!;
              //     });
              //   },
              // ),
              // CheckboxListTile(
              //   controlAffinity: ListTileControlAffinity.leading,
              //   value: isChecked3,
              //   title: Text('Bakso', style: TextStyle(color: Colors.white)),
              //   checkColor: Color(0xFFda1e3d),
              //   activeColor: Colors.white,
              //   side: BorderSide(color: Colors.white, width: 2),
              //   onChanged: (value) {
              //     setState(() {
              //       isChecked3 = value!;
              //     });
              //   },
              // ),

              // Container(
              //     alignment: Alignment.centerLeft,
              //     margin: const EdgeInsets.only(bottom: 6),
              //     child: Text('Jenis Kelamin',
              //         style: TextStyle(
              //             color: Colors.white,
              //             fontWeight: FontWeight.bold,
              //             fontSize: 16))),

              // RadioListTile<String>(
              //     title: Text('Laki-laki'),
              //     value: 'Laki-laki',
              //     groupValue: gender,
              //     onChanged: (value) {
              //       setState(() {
              //         gender = value!;
              //       });
              //     }),

              // RadioListTile<String>(
              //     title: Text('Perempuan'),
              //     value: 'Perempuan',
              //     groupValue: gender,
              //     onChanged: (value) {
              //       setState(() {
              //         gender = value!;
              //       });
              //     }),

              // Container(
              //     alignment: Alignment.centerLeft,
              //     margin: const EdgeInsets.only(bottom: 6),
              //     child: Text('Status Anggota',
              //         style: TextStyle(
              //             color: Colors.white,
              //             fontWeight: FontWeight.bold,
              //             fontSize: 16))),

              // SwitchListTile(
              //   value: isActive,
              //   title: Text(isActive ? 'Active' : 'Inactive',
              //       style: TextStyle(color: Colors.white)),
              //   onChanged: (value) {
              //     setState(() {
              //       isActive = value;
              //     });
              //   },
              // ),

              // Container(
              //     alignment: Alignment.centerLeft,
              //     margin: const EdgeInsets.only(bottom: 6),
              //     child: Text('Cari Kendaraan',
              //         style: TextStyle(
              //             color: Colors.white,
              //             fontWeight: FontWeight.bold,
              //             fontSize: 16))),

              // Autocomplete<String>(
              //   optionsBuilder: (TextEditingValue textEditingValue) {
              //     if (textEditingValue.text == '') {
              //       return const Iterable<String>.empty();
              //     }
              //     return _kOptions.where((String option) {
              //       return option
              //           .toLowerCase()
              //           .contains(textEditingValue.text.toLowerCase());
              //     });
              //   },
              //   onSelected: (String selection) {
              //     debugPrint('You just selected $selection');
              //   },
              // ),

              // ElevatedButton(
              //   child: Text('Date Picker'),
              //   onPressed: () async {
              //     DateTime? pickedDate = await showDatePicker(
              //         context: context,
              //         initialDate: DateTime.now(), //get today's date
              //         firstDate: DateTime(
              //             2000), //DateTime.now() - not to allow to choose before today.
              //         lastDate: DateTime(2101));
              //   },
              // )
              SegmentedButtonExample()
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}

class SegmentedButtonExample extends StatefulWidget {
  const SegmentedButtonExample({super.key});

  @override
  State<SegmentedButtonExample> createState() => _SegmentedButtonExampleState();
}

enum Calendar { day, week, month, year }

class _SegmentedButtonExampleState extends State<SegmentedButtonExample> {
  Calendar calendarView = Calendar.week;

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<Calendar>(
      style: SegmentedButton.styleFrom(
        backgroundColor: Colors.grey[200],
        foregroundColor: Color(0xFFda1e3d),
        selectedForegroundColor: Colors.white,
        selectedBackgroundColor: Colors.orange,
      ),
      segments: const <ButtonSegment<Calendar>>[
        ButtonSegment<Calendar>(
            value: Calendar.day,
            label: Text('Day'),
            icon: Icon(Icons.calendar_view_day)),
        ButtonSegment<Calendar>(
            value: Calendar.week,
            label: Text('Week'),
            icon: Icon(Icons.calendar_view_week)),
        ButtonSegment<Calendar>(
            value: Calendar.month,
            label: Text('Month'),
            icon: Icon(Icons.calendar_view_month)),
        ButtonSegment<Calendar>(
            value: Calendar.year,
            label: Text('Year'),
            icon: Icon(Icons.calendar_today)),
      ],
      selected: <Calendar>{calendarView},
      onSelectionChanged: (Set<Calendar> newSelection) {
        setState(() {
          // By default there is only a single segment that can be
          // selected at one time, so its value is always the first
          // item in the selected set.
          calendarView = newSelection.first;
        });
      },
    );
  }
}
