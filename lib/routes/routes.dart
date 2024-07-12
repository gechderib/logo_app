import 'package:flutter/material.dart';
import 'package:lgapp/model/profile.model.dart';
import 'package:lgapp/screens/home.dart';
import 'package:lgapp/screens/mainScreen.dart';
import 'package:lgapp/screens/profile.dart';

class RouteGenerator {
  static const String homeScreen = "/";
  static const String profileScreen = "/profile";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeScreen:
        return MaterialPageRoute(builder: (_) => Mainscreen());
      case profileScreen:
        return MaterialPageRoute(
          builder: (_) => ProfileScreen(
            profile: ProfileModel(
                isStarted: false,
                profile: "",
                name: "",
                prizeIcon: "",
                bio: ""),
          ),
        );
      default:
        return MaterialPageRoute(builder: (_) => Mainscreen());
    }
  }
}
