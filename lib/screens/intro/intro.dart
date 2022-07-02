import 'package:flutter/cupertino.dart';

class Intro extends StatelessWidget {
  static const routeName = '/intro';

  const Intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
                5,
                (index) => Image.asset(
                      "assets/images/iphone-valprop-$index@3x.png",
                      fit: BoxFit.cover,
                      alignment: Alignment.center,
                    )))
      ],
    );
  }
}
