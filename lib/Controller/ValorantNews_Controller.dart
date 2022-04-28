import 'package:get/state_manager.dart';
import 'package:testingui/Api/GamingScoop_RemoteServices.dart';
import 'package:testingui/models.dart';

class NewsController extends GetxController {
  List<ValorantNews> newsList = [];

  bool loading = false;

  void fecthnews() async {
    loading = true;
    List<ValorantNews>? news = await RemoteServices.fecthnews();
    print('News :: $news');
    if (news != null) {
      newsList = news;
      loading = false;
    }
    update();
  }
}
