import 'package:custom_fade_animation/custom_fade_animation.dart';
import 'package:flutter/material.dart';
import 'package:testingui/Widget.dart';
import 'package:testingui/modules-designs/Valorant/Valorant-Page-Design.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

bool _showContainerLogin = false;
bool _showContainerSignup = false;

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage('images/Plane/Background_Signin.png'),
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.1), BlendMode.darken),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
          child: Column(
            children: [
              Visibility(visible: !_showContainerLogin, child: buildLogin()),
              Visibility(visible: _showContainerSignup, child: buildSignup()),
            ],
          ),
        ),
      ),
    );
  }

  Widget ButtonSignup() {
    return RaisedButton(
      padding: const EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
      onPressed: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => ValorantPageDesign()));
        setState(() {});
      },
      color: Colors.deepPurple,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: customtext2_3('Signup'),
    );
  }

  Widget ButtonLogin() {
    return RaisedButton(
      padding: const EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
      onPressed: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => ValorantPageDesign()));
        setState(() {
          _showContainerLogin = !_showContainerLogin;
        });
      },
      color: Colors.deepPurple,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: customtext2_3('Login'),
    );
  }

  Widget TextButtonToLogin() {
    return TextButton(
      onPressed: () {
        setState(() {
          _showContainerLogin = !_showContainerLogin;
          _showContainerSignup = !_showContainerSignup;
        });
      },
      child: customtext2_1('Login'),
    );
  }

  Widget TextButtonToSignup() {
    return TextButton(
      onPressed: () {
        setState(() {
          _showContainerLogin = !_showContainerLogin;
          _showContainerSignup = !_showContainerSignup;
        });
      },
      child: customtext2_1('Sign Up'),
    );
  }

  Widget buildSignup() {
    return FadeAnimation(
      1,
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          customtext2_2("Sign Up"),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.44,
                child: TextField1(
                    "First Name",
                    "Enter your first name",
                    "First Name",
                    const Icon(
                      Icons.drive_file_rename_outline,
                      color: Colors.white,
                    )),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.44,
                child: TextField1(
                    "Last Name",
                    "Enter your Last Name",
                    "Last Name",
                    const Icon(
                      Icons.drive_file_rename_outline,
                      color: Colors.white,
                    )),
              )
            ],
          ),
          Space(),
          TextField1(
              "Email id",
              "Enter your email id",
              "Email id",
              const Icon(
                Icons.email,
                color: Colors.white,
              )),
          Space(),
          TextField1(
              "Password",
              "Enter your password",
              "Password",
              const Icon(
                Icons.lock,
                color: Colors.white,
              )),
          Space(),
          TextField1(
              "Phone Number",
              "Enter your phone number",
              "Phone Number",
              const Icon(
                Icons.phone,
                color: Colors.white,
              )),
          Space(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [ButtonSignup(), TextButtonToLogin()],
          )
        ],
      ),
    );
  }

  Widget buildLogin() {
    return FadeAnimation(
      1,
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          customtext2_2("Login"),
          Space(),
          TextField1(
              "Email id",
              "Enter your email id",
              "Email id",
              const Icon(
                Icons.email,
                color: Colors.white,
              )),
          Space(),
          TextField1(
              "Password",
              "Enter your password",
              "Password",
              const Icon(
                Icons.lock,
                color: Colors.white,
              )),
          Space(),
          TextField1(
              "Phone Number",
              "Enter your phone number",
              "Phone Number",
              const Icon(
                Icons.phone,
                color: Colors.white,
              )),
          Space(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [ButtonLogin(), TextButtonToSignup()],
          )
        ],
      ),
    );
  }


}
