import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: LayoutExample(),
    debugShowCheckedModeBanner: false, // Menghilangkan label debug
  ));
}

class LayoutExample extends StatelessWidget {
  const LayoutExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Layout Example')),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Icon(Icons.star, size: 50, color: Colors.blue),
              Icon(Icons.favorite, size: 50, color: Colors.red),
              Icon(Icons.thumb_up, size: 50, color: Colors.green),
            ],
          ),
          Expanded(
            child: Center(
              child: Text(
                'Welcome to Layout!',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
