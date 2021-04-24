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
            padding: const EdgeInsets.only(left: 16, right: 16, top: 14),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 30,
              child: OutlineButton(
                onPressed: () {},
                child: Text("Edit Profile"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 14,left: 8),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        buildStory(
                            'https://img.emg-services.net/HtmlPages/HtmlPage4239/switzerland-header-2.jpg',"Switzerland"),
                        buildStory(
                            'https://www.state.gov/wp-content/uploads/2019/04/Japan-2107x1406.jpg',"Japan"),
                        buildStory(
                            'https://azgovernor.gov/sites/default/files/londs_0.jpg',"London"),
                        buildStory(
                            'https://images.adsttc.com/media/images/5d44/14fa/284d/d1fd/3a00/003d/large_jpg/eiffel-tower-in-paris-151-medium.jpg?1564742900',"Paris"),
                        buildStory(
                            'https://static.toiimg.com/photo/77757963.cms',"New York"),
                        buildStory(
                            'https://static.toiimg.com/photo/75404966.cms',"Italy"),
                        buildStory(
                            'https://thecommonwealth.org/sites/default/files/styles/press_release_large/public/images/hero/taj-mahal-620.jpg?itok=PKSpaEMm',"India"),
                        buildStory(
                            'https://www.studying-in-germany.org/wp-content/uploads/2018/07/German-Culture-and-Traditions.jpg',"Germany"),
                        buildStory(
                            'https://www.filmibeat.com/imgm/416x335x100/2021/04/janhvi-kapoor-hot-pics_16179436437.jpg',"Algeria"),
                        buildStory(
                            'https://socialtelecast.com/wp-content/uploads/2021/02/Propose-Day-images-2021.jpg',"Mexico"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildStory(String imageLink, name) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipOval(
            child: Image.network(
              imageLink,
              width: 60,
              height: 60,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(name),
      ],
    );
  }
}
