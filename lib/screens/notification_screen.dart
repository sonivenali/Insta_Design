import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: false,
        title: Text(
          "Activity",
          style: GoogleFonts.lora(fontSize: 24, fontWeight: FontWeight.w700),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipOval(
                  child: Image.network(
                    "https://wallpapercave.com/wp/wp5048074.jpg",
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
