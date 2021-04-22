import 'package:flutter/material.dart';

class FeedWidget extends StatefulWidget {
  @override
  _FeedWidgetState createState() => _FeedWidgetState();
}

class _FeedWidgetState extends State<FeedWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              ClipOval(
                child: Image.network(
                  "http://c.files.bbci.co.uk/55CB/production/_117636912_gettyimages-1231727932.jpg",
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14),
                child: Text(
                  "John",
                  style: TextStyle(color: Colors.white, fontSize: 20),
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
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                ),
              )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Image.network(
              "http://c.files.bbci.co.uk/55CB/production/_117636912_gettyimages-1231727932.jpg",
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 14, left: 8),
            child: Stack(
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
                        "421 Likes",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Positioned(
                        right: 0,
                        child: Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        )),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
