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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                          style: GoogleFonts.lato(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "Approve or ignore requests",
                          style:
                              GoogleFonts.lato(color: Colors.grey, fontSize: 15),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 14, bottom: 8),
              child: Text(
                "Today",
                style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
            ),
            buildRequest(
                "https://c.files.bbci.co.uk/55CB/production/_117636912_gettyimages-1231727932.jpg",
                "mehak.mehta"),
            buildLiked(
                "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg",
                "Prince_malik",
                "https://images.ctfassets.net/hrltx12pl8hq/7yQR5uJhwEkRfjwMFJ7bUK/dc52a0913e8ff8b5c276177890eb0129/offset_comp_772626-opt.jpg?fit=fill&w=800&h=300"),
            buildLiked(
                "https://neilpatel.com/wp-content/uploads/2017/09/image-editing-tools.jpg",
                "leena",
                "https://www.photographersedit.com/assets/images/after_gracebadger.jpg"),
            buildLiked(
                "https://photologo.co/wp-content/uploads/2019/05/photologo-1-1.jpg",
                "joseph",
                "https://render.fineartamerica.com/images/rendered/default/greeting-card/images/artworkimages/medium/1/jumping-tiger-steve-mckinzie.jpg?&targetx=-33&targety=0&imagewidth=766&imageheight=500&modelwidth=700&modelheight=500&backgroundcolor=A29F99&orientation=0"),
            buildRequest(
                "https://www.roxanneelisephotography.com/wp-content/uploads/sites/3743/2017/01/1484714085200.jpeg",
                "leena.hiu"),
            buildRequest(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-fff2lftqIE077pFAKU1Mhbcj8YFvBbMvpA&usqp=CAU",
                "naveen.kuo"),
            buildLiked(
                "https://neilpatel.com/wp-content/uploads/2017/09/image-editing-tools.jpg",
                "jez",
                "https://cdn.pixabay.com/photo/2020/06/29/00/57/moon-5351042_1280.jpg"),
            buildRequest(
                "https://c.files.bbci.co.uk/55CB/production/_117636912_gettyimages-1231727932.jpg",
                "lucifer"),
            buildLiked(
                "https://neilpatel.com/wp-content/uploads/2017/09/image-editing-tools.jpg",
                "leena",
                "https://www.photographersedit.com/assets/images/after_gracebadger.jpg"),
          ],
        ),
      ),
    );
  }

  Padding buildLiked(String imageLink, name, post) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 8,
        top: 6,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                      backgroundImage: Image.network(
                        imageLink,
                        width: 30,
                        height: 30,
                        fit: BoxFit.cover,
                      ).image),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 4),
                    child: Text(
                      name,
                      style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Text(
                    "liked your photo.",
                    style: GoogleFonts.lato(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Image.network(
                  post,
                  height: 60,
                  width: 60,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Padding buildRequest(
    String profileLink,
    name,
  ) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 8,
        top: 8,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
                backgroundImage: Image.network(
                  profileLink,
                  width: 30,
                  height: 30,
                  fit: BoxFit.cover,
                ).image),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: GoogleFonts.lato(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "Requested to follow.",
                    style: GoogleFonts.lato(color: Colors.white, fontSize: 13),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 4, left: 12),
              child: FlatButton(
                padding: EdgeInsets.zero,
                height: 28,
                onPressed: () {},
                child: Text("Confi.."),
                color: Colors.blue,
              ),
            ),
            SizedBox(
              height: 28,
              child: OutlineButton(
                padding: EdgeInsets.zero,
                borderSide: BorderSide(color: Colors.white),
                onPressed: () {},
                child: Text(
                  "Delete",
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
