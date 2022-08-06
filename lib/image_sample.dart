/*
https://www.youtube.com/watch?v=KfMiaJLHnWY&list=PL6lh8cTntlDiLlH_rHl5F0JOy_gRm_Wa4&index=12
 */

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(const ScreenWidget());

class ScreenWidget extends StatelessWidget {
  const ScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Пример Image Widget"),
        ),
        body: const ImageWidget(),
      ),
    );
  }
}

class ImageWidget extends StatelessWidget {
  const ImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String assetNamePath = 'assets/images/Bali.jpg';
    const String assetNamePath2 = 'assets/images/i.webp';
    const String assetNameSvg = 'assets/subscribe.svg';
    const String assetNameUrl = 'https://upload.wikimedia.org/wikipedia/commons/3/38/Chinese_temple%2C_Bali.jpg';

    // AssetImage imageFromAssetImage = const AssetImage(assetNamePath);
    // Image imageFromAsset = Image.asset(assetNamePath, fit: BoxFit.cover,);
    Image imageFromAsset = Image.asset(assetNamePath2);
    // Image imageFromWeb = Image.network(assetNameUrl);

    Image changedImage = Image(
      image: imageFromAsset.image,
      color: Colors.red,
      colorBlendMode: BlendMode.color,
    );

    SvgPicture imageFromAssetSvg = SvgPicture.asset(assetNameSvg, fit: BoxFit.cover,);

    return Container(
      constraints: const BoxConstraints.expand(height: double.infinity),
      // child: Image(image: imageFromAssetImage, fit: BoxFit.cover,),
      // child: imageFromAsset,
      // child: imageFromWeb,
      // child: changedImage,
      child: imageFromAssetSvg,
    );
  }
}
