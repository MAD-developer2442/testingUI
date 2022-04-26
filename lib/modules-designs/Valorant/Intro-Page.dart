// ignore_for_file: non_constant_identifier_names

import 'package:custom_fade_animation/custom_fade_animation.dart';
import 'package:flutter/material.dart';
import 'package:testingui/Widget.dart';
import 'package:testingui/modules-designs/Valorant/Sign-In.dart';

bool _showContainerIntro = true;
bool _showContainerLogin = false;

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage('images/Plane/Background_Intro.png'),
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.7), BlendMode.darken),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
            margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
            child: Column(
              children: [
                Visibility(
                    visible: _showContainerIntro, child: buildContainer()),
              ],
            )),
      ),
    );
  }

  Widget buildContainer() {
    return FadeAnimation(
      2,
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: customtext2_2('Travel with\nComfort and safety'),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          SizedBox(
              width: MediaQuery.of(context).size.width * 0.3,
              child: ButtonLogin()),
        ],
      ),
    );
  }

  Widget ButtonLogin() {
    return RaisedButton(
      padding: const EdgeInsets.all(10),
      onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => SignIn()));
        setState(() {
          _showContainerLogin = !_showContainerLogin;
        });
      },
      color: Colors.purple,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: customtext2_3('Login'),
    );
  }
}
