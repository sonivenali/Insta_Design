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
          style: GoogleFonts.lato(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Row(
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 14),
                      child: CircleAvatar(
                          radius: 28,
                          backgroundColor: Colors.white,
                          backgroundImage: Image.network(
                            "https://www.filmibeat.com/imgm/416x335x100/2021/04/janhvi-kapoor-hot-pics_161794364310.jpg",
                            width: 60,
                            height: 60,
                            fit: BoxFit.cover,
                          ).image),
                    ),
                    Positioned(
                        right: 0,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Text(
                            "1000",
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 14,
                            ),
                          ),
                        ))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Follow Requests",
                        style: GoogleFonts.lato(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w700
                        ),
                      ),
                      Text(
                        "Approve or ignore requests",
                        style: GoogleFonts.lato(color: Colors.grey,fontSize: 15),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

