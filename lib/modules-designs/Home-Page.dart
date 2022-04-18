import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePageDesign extends StatefulWidget {
  @override
  _HomePageDesignState createState() => _HomePageDesignState();
}

final List<String> imageList = [
  "https://www.setaswall.com/wp-content/uploads/2018/08/Spiderman-Wallpaper-76-1280x720.jpg",
  "https://images.hdqwalls.com/download/spiderman-peter-parker-standing-on-a-rooftop-ix-1280x720.jpg",
  "https://images.wallpapersden.com/image/download/peter-parker-spider-man-homecoming_bGhsa22UmZqaraWkpJRmZ21lrWxnZQ.jpg",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvUgui-suS8DgaljlONNuhy4vPUsC_UKvxJQ&usqp=CAU",
];

class _HomePageDesignState extends State<HomePageDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: SafeArea(
        child: Center(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Lottie.asset(
                'images/lottie_file.json',
                repeat: true,
                reverse: true,
                animate: true,
              ),
              buildSlider2()
            ],
          ),
        ),
      ),
    );
  }

  //
  // Widget buildSlider() {
  //   return CarouselSlider(
  //     options: CarouselOptions(
  //         enlargeCenterPage: true,
  //         enableInfiniteScroll: false,
  //         autoPlay: true,
  //         scrollPhysics: const BouncingScrollPhysics(),
  //         aspectRatio: 2,
  //         autoPlayInterval: const Duration(seconds: 1)),
  //     items: imageList
  //         .map((e) => ClipRRect(
  //               borderRadius: BorderRadius.circular(8),
  //               child: Stack(
  //                 fit: StackFit.expand,
  //                 children: <Widget>[
  //                   Image.network(
  //                     e,
  //                     width: 1050,
  //                     height: 350,
  //                     fit: BoxFit.cover,
  //                   )
  //                 ],
  //               ),
  //             ))
  //         .toList(),
  //   );
  // }

  Widget buildSlider2() {
    return CarouselSlider(
      items: [
        //1st Image of Slider
         Card(
          color: Colors.green.shade50,
          child: const ListTile(
            title: const Text("Spiderman"),
          ),
        ),

        //2nd Image of Slider
        Card(
          color: Colors.red.shade50,
          child: ListTile(
            title: Text("Spiderman 2"),
          ),
        ), //3rd Image of Slider
         Card(color: Colors.yellow.shade100,
          child: Container(
            child: const ListTile(
              title: const Text("Spiderman 3"),
            ),
          ),
        ),
      ],

      //Slider Container properties
      options: CarouselOptions(
        height: 180.0,
        enlargeCenterPage: true,
        autoPlay: true,
        aspectRatio: 16 / 9,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        viewportFraction: 0.8,
      ),
    );
  }

  Widget listdata() {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: 20,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
            leading: const Icon(
              Icons.list,
              color: Colors.white,
            ),
            trailing: const Text(
              "GFG",
              style: TextStyle(color: Colors.green, fontSize: 15),
            ),
            title: Text("List item $index"));
      },
    );
  }
}
