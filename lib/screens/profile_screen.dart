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
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 8),
                child: CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.white,
                    backgroundImage: Image.network(
                      "https://www.filmibeat.com/imgm/416x335x100/2021/04/janhvi-kapoor-hot-pics_161794364310.jpg",
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                    ).image),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 25),
                child: Text(
                  "491\nPosts",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
              Text(
                "211\nFollowers",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Text(
                  "192\nFollowing",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18, top: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Veronica",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16,right: 16,top: 14),
            child: SizedBox(width: MediaQuery.of(context).size.width,height: 30,
              child: OutlineButton(
                onPressed: () {},
                child: Text("Edit Profile"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
