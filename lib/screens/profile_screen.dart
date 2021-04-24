import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {

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
      "https://html5box.com/html5gallery/images/Waves_1024.jpg",
      "https://images.all-free-download.com/images/graphicthumb/hd_picture_of_the_beautiful_natural_scenery_03_166249.jpg",
      "https://i.pinimg.com/originals/87/26/ff/8726ff3556a8edb54088c0bf5c48af60.gif",
      "https://killerattitudestatus.in/wp-content/uploads/2019/12/gud-night-images.jpg",
      "https://media.istockphoto.com/photos/pakistan-monument-islamabad-picture-id535695503?k=6&m=535695503&s=612x612&w=0&h=uP8aDK4xlfjk3kEiyr9wwUiuh80UwAiICweFpiBDosk=",

    ];

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
      body: SingleChildScrollView(
        child: Column(
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
              padding: const EdgeInsets.only(top: 14, left: 8),
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        buildStory(
                            'https://img.emg-services.net/HtmlPages/HtmlPage4239/switzerland-header-2.jpg',
                            "Switzerland"),
                        buildStory(
                            'https://www.state.gov/wp-content/uploads/2019/04/Japan-2107x1406.jpg',
                            "Japan"),
                        buildStory(
                            'https://azgovernor.gov/sites/default/files/londs_0.jpg',
                            "London"),
                        buildStory(
                            'https://images.adsttc.com/media/images/5d44/14fa/284d/d1fd/3a00/003d/large_jpg/eiffel-tower-in-paris-151-medium.jpg?1564742900',
                            "Paris"),
                        buildStory(
                            'https://static.toiimg.com/photo/77757963.cms',
                            "New York"),
                        buildStory(
                            'https://static.toiimg.com/photo/75404966.cms',
                            "Italy"),
                        buildStory(
                            'https://thecommonwealth.org/sites/default/files/styles/press_release_large/public/images/hero/taj-mahal-620.jpg?itok=PKSpaEMm',
                            "India"),
                        buildStory(
                            'https://www.studying-in-germany.org/wp-content/uploads/2018/07/German-Culture-and-Traditions.jpg',
                            "Germany"),
                        buildStory(
                            'https://media.worldnomads.com/travel-safety/algeria/terrorism-algeria-lead.jpg',
                            "Algeria"),
                        buildStory(
                            'https://topadventure.com/__export/1603739147070/sites/laverdad/img/2020/10/26/las_mejores_ciudades_para_hacer_turismo_de_negocios_en_mxxicox.jpg_1183029055.jpg',
                            "Mexico"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16,left: 30,right: 30),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.widgets_outlined,color: Colors.grey,),
                  Icon(Icons.live_tv_outlined,color: Colors.grey,),
                  Icon(Icons.person_pin_outlined,color: Colors.grey,)
                ],
              ),
            ),
            GridView.count(
              crossAxisCount: 3,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.only(top: 12),
              children: imageList.map((link) => buildImage(link)).toList(),
            ),
          ],
        ),
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
