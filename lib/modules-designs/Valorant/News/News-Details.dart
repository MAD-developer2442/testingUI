import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testingui/Controller/ValorantNews_Controller.dart';
import 'package:testingui/Widget.dart';
import 'package:testingui/models.dart';

class NewsDetails extends StatefulWidget {
  final ValorantNews news;

  const NewsDetails(this.news, {Key? key}) : super(key: key);

  @override
  State<NewsDetails> createState() => _NewsDetailsState();
}

class _NewsDetailsState extends State<NewsDetails> {
  final NewsController movieController = Get.put(NewsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(centerTitle: true,
        backgroundColor: Colors.black,
        title: customtext1(
          widget.news.name,
        ),
      ),
      body: SingleChildScrollView(child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          customNewsDetails(
              widget.news.urlToImage,
              '"${widget.news.title}"',
              widget.news.content),
        ],
      ),
    ),);
  }
}
