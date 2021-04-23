import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final imageList = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVeXmmgy4UHViI1nvK0X5Mddk3b_Kx9hkEug&usqp=CAU",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/1200px-Image_created_with_a_mobile_phone.png",
    "https://buffer.com/library/content/images/2020/09/Frame-47.png",
    "https://www.filmibeat.com/imgm/416x335x100/2021/04/janhvi-kapoor-hot-pics_161794364310.jpg",
    "https://i.pinimg.com/originals/87/26/ff/8726ff3556a8edb54088c0bf5c48af60.gif",
    "https://killerattitudestatus.in/wp-content/uploads/2019/12/gud-night-images.jpg",
    "https://media.istockphoto.com/photos/pakistan-monument-islamabad-picture-id535695503?k=6&m=535695503&s=612x612&w=0&h=uP8aDK4xlfjk3kEiyr9wwUiuh80UwAiICweFpiBDosk=",
    "https://www.businessinsider.in/photo/76830618/photographer-of-the-viral-black-panther-images-from-india-shares-his-story.jpg?imgsize=1420465",
    "https://cdn.jpegmini.com/user/images/slider_puffin_before_mobile.jpg",
    "http://c.files.bbci.co.uk/C870/production/_112921315_gettyimages-876284806.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVeXmmgy4UHViI1nvK0X5Mddk3b_Kx9hkEug&usqp=CAU",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/1200px-Image_created_with_a_mobile_phone.png",
    "https://buffer.com/library/content/images/2020/09/Frame-47.png",
    "https://www.filmibeat.com/imgm/416x335x100/2021/04/janhvi-kapoor-hot-pics_161794364310.jpg",
    "https://i.pinimg.com/originals/87/26/ff/8726ff3556a8edb54088c0bf5c48af60.gif",
    "https://killerattitudestatus.in/wp-content/uploads/2019/12/gud-night-images.jpg",

  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
              padding: const EdgeInsets.only(top: 40, left: 20, right: 8),
              child: Container(
                height: 40,
                child: Row(
                  children: [
                    Expanded(
                      flex: 8,
                      child: TextField(
                          style: TextStyle(fontSize: 14),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.zero,
                            prefixIcon: Icon(Icons.search),
                            hintText: "Search",
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black,
                                ),
                                borderRadius: BorderRadius.circular(18)),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12, right: 8),
                      child: Icon(Icons.qr_code_scanner),
                    ),
                  ],
                ),
              )),
          GridView.count(
            crossAxisCount: 3,
            shrinkWrap: true,
            children: imageList.map((link) => buildImage(link)).toList(),
          ),
        ],
      ),
    );
  }

  Widget buildImage(String image) {
    return Padding(
      padding: const EdgeInsets.all(1),
      child: Image.network(
        image,
        fit: BoxFit.cover,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.width,
      ),
    );
  }
}
