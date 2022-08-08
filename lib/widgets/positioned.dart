import 'package:flutter/material.dart';
import 'package:flutter_demo/widgets/aboutIsland.dart';
import 'package:flutter_demo/widgets/backgroundImage.dart';
import 'package:flutter_demo/widgets/heartIcon.dart';

class PositionedWidget extends StatelessWidget {
  const PositionedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      fit: StackFit.expand,
      children: const <Widget>[
        BackgroundImage(),
        Positioned(
          top: 450,
          child: AboutIsland(),
        ),
        Positioned(right: 50, top: 450, child: HeartIcon())
      ],
    );
  }
}
