import 'package:flutter/material.dart';

class HeartIcon extends StatelessWidget{
  const HeartIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.favorite, color: Colors.red, size: 30,
    );

  }

}