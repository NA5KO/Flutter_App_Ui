import 'package:flutter/material.dart';
import 'package:flutter_app_ui/history.dart';
import 'package:flutter_app_ui/profile.dart';

class Common extends StatefulWidget {
  const Common({super.key});

  @override
  State<Common> createState() => _CommonState();
}

class _CommonState extends State<Common> {
  var activeScreen = 'profile-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'history-screen';
    });
  }

  void switchScreen2() {
    setState(() {
      activeScreen = 'profile-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = Profile(switchScreen);

    if (activeScreen == 'history-screen') {
      screenWidget = History(switchScreen2);
    }

    if (activeScreen == 'profile-screen') {
      screenWidget = Profile(switchScreen);
    }

    return MaterialApp(home: screenWidget);
  }
}
