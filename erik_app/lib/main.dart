//1. ini untuk ngejalanin kode counter_app
// import 'package:flutter/material.dart';
// import 'counter_app.dart';

// void main() {
//   runApp(const MaterialApp(
//     home: CounterApp(),
//   ));
// }

// 2. ini untuk ngejalanin kode dari layout_example
// import 'package:flutter/material.dart';
// import 'layout_example.dart';

// void main() {
//   runApp(const MaterialApp(
//     home: LayoutExample(),
//     debugShowCheckedModeBanner: false, // Menghilangkan label debug
//   ));
// }

// 3. navigation
import 'package:flutter/material.dart';
import 'page_one.dart';
import 'page_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigasi Pages',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => PageOne(),
        '/pageTwo': (context) => PageTwo(),
      },
    );
  }
}
