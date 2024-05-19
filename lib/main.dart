import 'package:flutter/material.dart';
import 'package:flutter_basic/common_button.dart';
import 'package:flutter_basic/custom_dropdown_widget.dart';
import 'package:flutter_basic/text_field_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
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
