import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Steady Calendar',
      initialRoute: Intro.routeName,
      routes: {
        Splash.routeName: (context) => Splash(),
        Intro.routeName: (context) => Intro(),
        LoginOptions.routeName: (context) => LoginOptions(),
        CalPager.routeName: (context) => CalPager(),
      },
    );
  }
}
