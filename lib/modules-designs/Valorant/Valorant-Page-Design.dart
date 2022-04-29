import 'package:carousel_slider/carousel_slider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:custom_fade_animation/custom_fade_animation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testingui/Controller/ValorantNews_Controller.dart';
import 'package:testingui/Home_Page.dart';
import 'package:testingui/Widget.dart';
import 'package:testingui/modules-designs/Valorant/News/News-tile.dart';

class ValorantPageDesign extends StatefulWidget {
  @override
  _HomePageDesignState createState() => _HomePageDesignState();
}

bool _showAgentsContainer = true;
bool _showNewsContainer = false;

List<AssetImage> Images = [
  const AssetImage("images/Agents/Astra.png"),
  const AssetImage("images/Agents/Breach.png"),
  const AssetImage("images/Agents/Brimestone.png"),
  const AssetImage("images/Agents/Chamber.png"),
  const AssetImage("images/Agents/Cypher.png"),
  const AssetImage("images/Agents/Fade.png"),
  const AssetImage("images/Agents/Jett.png"),
  const AssetImage("images/Agents/Kayo.png"),
  const AssetImage("images/Agents/Killjoy.png"),
  const AssetImage("images/Agents/Neon.png"),
  const AssetImage("images/Agents/Omen.png"),
  const AssetImage("images/Agents/Pheonix.png"),
  const AssetImage("images/Agents/Raze.png"),
  const AssetImage("images/Agents/Reyna.png"),
  const AssetImage("images/Agents/Sage.png"),
  const AssetImage("images/Agents/Skye.png"),
  const AssetImage("images/Agents/Sova.png"),
  const AssetImage("images/Agents/Viper.png"),
  const AssetImage("images/Agents/Yoru.png"),
];
List<AssetImage> FeatureImages = [
  const AssetImage("images/Plane/Duelist.png"),
  const AssetImage("images/Plane/Initiater.png"),
  const AssetImage("images/Plane/Sentiniel.png"),
  const AssetImage("images/Plane/Controller.png"),
];
List<Color> CardColor = [
  Colors.pink.shade700,
  Colors.green.shade700,
  Colors.brown.shade700,
  Colors.grey.shade700,
  Colors.white,
  Colors.cyan.shade700,
  Colors.lightBlue.shade700,
  Colors.yellow.shade700,
  Colors.deepPurpleAccent.shade700,
  Colors.blue.shade700,
  Colors.orange.shade700,
  Colors.blueGrey.shade700,
  Colors.purple.shade700,
  Colors.greenAccent.shade700,
  Colors.redAccent.shade700,
  Colors.blue.shade700,
  Colors.green.shade900,
  Colors.blueAccent.shade700,
];
List<String> AgentName = [
  "Astra",
  "Breach",
  "Brimestone",
  "Chamber",
  "Cypher",
  "Fade",
  "Jett",
  "Kay/O",
  "Killjoy",
  "Neon",
  "Omen",
  "Pheonix",
  "Raze",
  "Reyna",
  "Sage",
  "Skye",
  "Sova",
  "Viper",
  "Yoru",
];
List<String> AvatarRoles = [
  "Duelist",
  "Initiater",
  "Sentinel",
  "Controller",
];
List<String> AgentVoices = [
  '"I am on a higher plane"',
  '"Stand in my way. I dare you."',
  '"They think I am an old dog? Heh, I will show them just how many tricks I know."',
  '"You have good taste, my friend."',
  '"Nothing stays hidden from me. Nothing."',
  "Everyone is afraid of something.",
  '"Cool. Lets go."',
  '"Lets do this."',
  '"Relax, I have already thought of everything."',
  '"Move, or get zapped."',
  '"I am the beginning. I am the end."',
  '"Just take a seat, I got this."',
  '"Yes, I am pumped!"',
  '"They have no idea how heartless I am."',
  '"I am both shield and sword."',
  '"Alright! Where is the fight?"',
  '"Wherever they run, I will find them."',
  '"No one can hold their breath forever."',
  '"I will fight anybody. Ill fight"',
];
int _currentIndex = 0;

class _HomePageDesignState extends State<ValorantPageDesign> {
  final NewsController movieController = Get.put(NewsController());

  @override
  void initState() {
    movieController.loading = true;
    movieController.fecthnews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: customtext2_1("Valorant"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      bottomNavigationBar: bottomNavBar(),
      backgroundColor: Colors.black12,
      body: SafeArea(
        child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Container(
              // decoration: BoxDecoration(
              //     image: DecorationImage(
              //         image: AssetImage("images/Plane/img_6.png"),
              //         fit: BoxFit.fill,
              //     opacity: 0.5
              //     )
              //     ),
              child: Column(
                children: [
                  Visibility(
                    visible: _showAgentsContainer,
                    child: AgentsContainer(),
                  ),
                  Visibility(
                      visible: _showNewsContainer, child: NewsContainer()),
                ],
              ),
            )),
      ),
    );
  }

  Widget AgentsContainer() {
    return FadeAnimation(
        1,
        Column(
          children: <Widget>[
            Image.asset(
              "images/Plane/Valorantlogo.png",
              height: 120,
              width: 120,
            ),
            customtitle("Choose your Agent"),
            // Lottie.asset(
            //   'images/lottie_file.json',
            //   repeat: true,
            //   reverse: true,
            //   animate: true,
            // ),
            Space(),
            buildSlider2(),
            Container(
              padding: const EdgeInsets.only(bottom: 20),
              child: customtitle("Agent Roles"),
            ),
            GridAgentTiles()
          ],
        ));
  }

  Widget NewsContainer() {
    return FadeAnimation(2, GetBuilder(
      builder: (NewsController controller) {
        return (controller.loading)
            ? Container()
            : Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemCount: controller.newsList.length,
                  itemBuilder: (context, index) {
                    return NewsTile(movieController.newsList[index]);
                  },
                ),
              );
      },
    ));
  }

  Widget buildSlider2() {
    return CarouselSlider(
      items: [
        customlisttile(AgentName[0], CardColor[0], Images[0]),
        customlisttile(AgentName[1], CardColor[1], Images[1]),
        customlisttile(AgentName[2], CardColor[2], Images[2]),
        customlisttile(AgentName[3], CardColor[3], Images[3]),
        customlisttile(AgentName[4], CardColor[4], Images[4]),
        customlisttile(AgentName[5], CardColor[5], Images[5]),
        customlisttile(AgentName[6], CardColor[6], Images[6]),
        customlisttile(AgentName[7], CardColor[7], Images[7]),
        customlisttile(AgentName[8], CardColor[8], Images[8]),
        customlisttile(AgentName[9], CardColor[9], Images[9]),
        customlisttile(AgentName[10], CardColor[10], Images[10]),
        customlisttile(AgentName[11], CardColor[11], Images[11]),
        customlisttile(AgentName[12], CardColor[12], Images[12]),
        customlisttile(AgentName[13], CardColor[13], Images[13]),
        customlisttile(AgentName[14], CardColor[14], Images[14]),
        customlisttile(AgentName[15], CardColor[15], Images[15]),
        customlisttile(AgentName[16], CardColor[16], Images[16]),
        customlisttile(AgentName[17], CardColor[17], Images[17]),
      ],

      //Slider Container properties
      options: CarouselOptions(
        enlargeCenterPage: true,
        pauseAutoPlayOnTouch: true,
        scrollPhysics: const BouncingScrollPhysics(),
        autoPlay: true,
        aspectRatio: 16/12,
        autoPlayCurve: Curves.ease,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: const Duration(milliseconds: 1000),
        viewportFraction: 0.6,
        disableCenter: true,pageSnapping: false,
      ),
    );
  }

  Widget GridAgentTiles() {
    return Column(
      children: [
        customgridtile(AvatarRoles[0], FeatureImages[0], CardColor[0], () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => HomePage()));
        }),
        customgridtile(AvatarRoles[1], FeatureImages[1], CardColor[1], () {}),
        customgridtile(AvatarRoles[2], FeatureImages[2], CardColor[2], () {}),
        customgridtile(AvatarRoles[3], FeatureImages[3], CardColor[3], () {}),
      ],
    );
  }

  Widget bottomNavBar() {
    return CurvedNavigationBar(
      items: const <Widget>[
        Icon(Icons.segment, size: 35, color: Colors.deepPurpleAccent),
        Icon(Icons.newspaper, size: 35, color: Colors.deepPurpleAccent),
      ],
      height: 55,
      color: Colors.grey.shade900,
      backgroundColor: Colors.transparent,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 600),
      onTap: (value) {
        setState(() {
          setState(() {
            _currentIndex = value;
            if (_currentIndex == 0) {
              _showNewsContainer = false;
              _showAgentsContainer = true;
            }
            if (_currentIndex == 1) {
              _showNewsContainer = true;
              _showAgentsContainer = false;
            }
          });
        });
      },
    );
  }
}
