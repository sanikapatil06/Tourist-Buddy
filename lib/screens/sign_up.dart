import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:tourist_buddy/screens/GoogleSignInProvider.dart';

class SignUpWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          FlutterLogo(size: 120.0),
          Spacer(),
          Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Hey there, \nWelcome",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              )),
          SizedBox(
            height: 8,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              "Login to your account",
              style: TextStyle(fontSize: 16),
            ),
          ),
          Spacer(),
          ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Colors.black,
                minimumSize: Size(double.infinity, 50),
              ),
              icon: FaIcon(
                FontAwesomeIcons.google,
                color: Colors.red,
              ),
              onPressed: () {
                final provider =
                    Provider.of<GoogleSignInProvider>(context, listen: false);
                provider.googleLogin();
              },
              label: Text("Sign Up with Google")),
          SizedBox(height: 40),
          RichText(
              text: TextSpan(
                  text: "Log in",
                  style: TextStyle(decoration: TextDecoration.underline)))
        ],
      ),
    );
  }
}
