import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset('assets/images/Bali.jpg', fit: BoxFit.cover,),
    );
  }
}
