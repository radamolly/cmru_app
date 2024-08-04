import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String name = "Phattharada Uansa-ard";

void changeName() {
  setState(() {
    name = "Somchai Jaidee";
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: const Text(
          'Home', 
        style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue.shade800,
      ),
      body: Center(
        child: Text("สวัสดี $name"),
      ), 
      floatingActionButton: FloatingActionButton(
        onPressed: changeName,
        child: Icon(Icons.add),
      ),
    );
  }
}