import 'package:flutter/material.dart';

class FeedWidget extends StatefulWidget {
  @override
  _FeedWidgetState createState() => _FeedWidgetState();
}

class _FeedWidgetState extends State<FeedWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildFeed(
            "https://freedesignfile.com/upload/2017/01/Handsome-man-HD-picture-09.jpg",
            "John",
            "http://c.files.bbci.co.uk/55CB/production/_117636912_gettyimages-1231727932.jpg",
            "421 Likes"),
        buildFeed(
            "https://www.filmibeat.com/imgm/416x335x100/2021/04/janhvi-kapoor-hot-pics_161794364310.jpg",
            "Gloria",
            "https://wallpaperaccess.com/full/26984.jpg",
            "922 Likes"),
        buildFeed(
            "https://i.pinimg.com/originals/ba/91/09/ba91092797a1ceb14cab042a7607eecc.jpg",
            "Stef",
            "https://www.adobe.com/content/dam/cc/us/en/products/creativecloud/stock/stock-riverflow1-720x522.jpg.img.jpg",
            "426 Likes"),
        buildFeed(
            "https://images.all-free-download.com/images/graphicthumb/man_in_the_hat_202625.jpg",
            "Ali",
            "https://images.pexels.com/photos/799443/pexels-photo-799443.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
            "156 Likes"),
        buildFeed(
            "http://images.summitmedia-digital.com/preview/images/articles/2016/03/30/bloggers/nm_blogig.jpg",
            "Sutton",
            "https://fashionjournal.com.au/wp-content/uploads/2020/03/the-green-edit-mob.jpg",
            "233 Likes"),
      ],
    );
  }

  Padding buildFeed(String profilePhoto, profileName, post, likes) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              ClipOval(
                child: Image.network(
                  profilePhoto,
                  width: 30,
                  height: 30,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14),
                child: Text(
                  profileName,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Text(
                  "Folllow",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 12,
                      fontWeight: FontWeight.w700),
                ),
              )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Image.network(
              post,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 14, left: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        likes,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
