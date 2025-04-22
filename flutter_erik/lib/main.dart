import 'package:flutter/material.dart';
import 'buttons/raised_button.dart';
import 'buttons/flat_button.dart';
import 'buttons/icon_button.dart';
import 'buttons/floating_action_button.dart';
import 'buttons/cupertino_button.dart';
import 'buttons/custom_gesture.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App - Erik Rahman',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Buttons Demo')),
      body: Container(
        color: Colors.black,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 25),
                const Text(
                  'Welcome to My App',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                    shadows: [
                      Shadow(
                        offset: Offset(3.0, 3.0),
                        blurRadius: 5.0,
                        color: Colors.white10,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.star, size: 50, color: Colors.amber),
                    SizedBox(width: 10),
                    Icon(Icons.alarm, size: 50, color: Colors.green),
                    SizedBox(width: 10),
                    Icon(Icons.favorite, size: 50, color: Colors.purple),
                    SizedBox(width: 10),
                    Icon(Icons.book, size: 50, color: Colors.red),
                    SizedBox(width: 10),
                    Icon(Icons.build, size: 50, color: Colors.grey),
                  ],
                ),
                const SizedBox(height: 25),
                Image.asset('asset/erik.jpg', width: 200),
                const SizedBox(height: 25),
                Image.asset('asset/erik2.png', width: 200),
                const SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Enter your name',
                      labelStyle: const TextStyle(color: Colors.grey),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.amber),
                      ),
                      border: const OutlineInputBorder(),
                    ),
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(height: 25),
                ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.all(16),
                  children: [
                    _buildNavigationButton(
                        context, 'Raised Button', RaisedButtonDemo()),
                    _buildNavigationButton(
                        context, 'Flat Button', FlatButtonDemo()),
                    _buildNavigationButton(
                        context, 'Icon Button', IconButtonDemo()),
                    _buildNavigationButton(context, 'Floating Action Button',
                        FloatingActionButtonDemo()),
                    _buildNavigationButton(
                        context, 'Cupertino Button', CupertinoButtonScreen()),
                    _buildNavigationButton(
                        context, 'Custom Gesture', CustomGestureScreen()),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _buildNavigationButton(
    BuildContext context, String title, Widget screen) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8),
    child: ElevatedButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => screen));
      },
      child: Text(title),
    ),
  );
}
