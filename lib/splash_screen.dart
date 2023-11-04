import 'dart:async';
import 'package:animated_text_kit/animated_text_kit.dart';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:lottie/lottie.dart';
import 'package:tourist_buddy/signup/SignInScreen.dart';



class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return initScreen(context);
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 5);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => SignInScreen()));
  }

  initScreen(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              child: Lottie.asset("assets/travel.json",
                  height: 300.0, width: 500.0, repeat: true, animate: true),
            ),
            Container(
              child: Lottie.asset("assets/killy-car.json",
                  height: 250.0, width: 500.0, repeat: true, animate: true),
            ),
            SizedBox(
                child: DefaultTextStyle(
                    style: TextStyle(fontSize: 50.0, fontFamily: 'Lobster'),
                    child: Center(
                        child: AnimatedTextKit(animatedTexts: [
                          ScaleAnimatedText(
                            "Travel",
                            scalingFactor: 0.3,
                          ),
                          ScaleAnimatedText("Buddy", scalingFactor: 0.3),
                          ScaleAnimatedText("App", scalingFactor: 0.3),
                        ])))),
          ],
        ),
      ),
    );
  }}
