import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.lock_open_outlined),
        centerTitle: false,
        title: Text("Veronica_zen"),
        actions: [
          Icon(Icons.my_library_add_outlined),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 8),
            child: Icon(Icons.menu),
          ),
        ],
      ),

    );
  }
}
