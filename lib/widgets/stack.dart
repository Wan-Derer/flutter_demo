import 'package:flutter/material.dart';
import 'package:flutter_demo/widgets/aboutIsland.dart';
import 'package:flutter_demo/widgets/backgroundImage.dart';
import 'package:flutter_demo/widgets/heartIcon.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      // alignment: Alignment.center,
      alignment: const Alignment(1, 1),
      children: const <Widget>[
        BackgroundImage(),
        AboutIsland(),
        HeartIcon()
      ],
    );
  }
}
