import 'package:flutter/material.dart';

import 'aboutIsland.dart';
import 'backgroundImage.dart';
import 'heartIcon.dart';

class Example extends StatelessWidget{
  const Example({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BackgroundImage(),
        AboutIsland(),
        HeartIcon()
      ],
    );
  }

}



