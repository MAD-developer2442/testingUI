import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:testingui/models.dart';


class RemoteServices {
  static Future<List<ValorantNews>?> fecthnews() async {
    var response = await http.get(Uri.parse(
        'https://newsapi.org/v2/everything?q=valorant&apiKey=38f4bdbaa98c4acf98342be02536e715'));
    if (response.statusCode == 200) {
      var newsList = jsonDecode(response.body)['articles'] as List;
      List<ValorantNews>? news =
      newsList.map((tagJson) => ValorantNews.fromJson(tagJson)).toList();
      print(news.length);
      return news;
    } else {
      return null;
    }
  }
}