import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:testingui/Widget.dart';
import 'package:testingui/models.dart';
import 'package:testingui/modules-designs/Valorant/News/News-Details.dart';

class NewsTile extends StatelessWidget {
  final ValorantNews news;

  const NewsTile(this.news, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Newstile(context);
  }

  void title() {
    final userdata = GetStorage();
    userdata.write("newstitle", news.title);
  }

  Widget Newstile(BuildContext context) {
    return Card(
      color: Colors.black,
      child: Container(
        child: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => NewsDetails(news)));
          },
          child: Column(
            children: [

              // customnewstile(news.title, Colors.transparent,
              //     NetworkImage('${news.urlToImage}')),

              CarouselSlider(
                  items: [
                    customnewstile(news.title, Colors.transparent,
                        NetworkImage('${news.urlToImage}')),
                  ],
                  options: CarouselOptions(
                    height: 200,
                    aspectRatio: 16 / 10,
                    initialPage: 3,
                    enableInfiniteScroll: false,
                    autoPlay: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    disableCenter: true,
                    viewportFraction: 0.9,
                    enlargeCenterPage: true,
                    scrollDirection: Axis.vertical,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
