import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.camera_alt_outlined),
        title: Text(
          "Hashtagram",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.message_sharp),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection:Axis.horizontal,
        child: Column(
          children: [
            Divider(
              color: Colors.white,
            ),
            Row(
              children: [
                buildStory('https://wallpapercave.com/wp/wp5048074.jpg'),
                buildStory(
                    'https://www.shaadidukaan.com/vogue/wp-content/uploads/2019/08/hug-kiss-images.jpg'),
                buildStory(
                    'https://s2.best-wallpaper.net/wallpaper/5120x2880/1902/Smile-Asian-girl-walking-on-the-railroad_5120x2880.jpg'),
                buildStory(
                    'https://lh3.googleusercontent.com/proxy/0iUpPS5LyvLupgqwP67oXP6-l8Nani8qNIazl2IafoBNu_u9m_J6ujbqlIsWVPFozYUY5YMICPhwqlf4kfxavbaYPOzLcSvIc24Jsp-4Z8DmtrTqYM16c0sHh1898_JxiAlDUA'),
                buildStory(
                    'https://s2.best-wallpaper.net/wallpaper/5120x2880/1812/Asian-girl-use-camera-reeds_5120x2880.jpg'),
                buildStory(
                    'https://www.colesclassroom.com/wp-content/uploads/2019/08/beautiful-blur-blurred-background-733872.jpg'),
                buildStory(
                    'https://c.files.bbci.co.uk/55CB/production/_117636912_gettyimages-1231727932.jpg'),
                buildStory(
                    'https://killerattitudestatus.in/wp-content/uploads/2019/12/gud-night-images.jpg'),
                buildStory(
                    'https://www.filmibeat.com/imgm/416x335x100/2021/04/janhvi-kapoor-hot-pics_16179436437.jpg'),
                buildStory(
                    'https://socialtelecast.com/wp-content/uploads/2021/02/Propose-Day-images-2021.jpg'),
              ],
            )
          ],
        ),
      ),
    );
  }

  Padding buildStory(String imageLink) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipOval(
        child: Image.network(
          imageLink,
          width: 60,
          height: 60,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}