import 'package:flutter/material.dart';

void main() => runApp(const ScreenWidget());

class ScreenWidget extends StatelessWidget {
  const ScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Пример Container'),
        ),
        body: const SimpleWidget(),
      ),
    );
  }
}

class SimpleWidget extends StatelessWidget {
  const SimpleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        height: 300,
        alignment: Alignment.center,
        // padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        margin: const EdgeInsets.all(50),
        transform: Matrix4.rotationZ(0.2),
        decoration: BoxDecoration(
            // gradient: LinearGradient(colors: [Colors.lightGreenAccent, Colors.cyanAccent])
            color: Colors.lightGreenAccent,
            image: DecorationImage(
                image: Image.network(
                        'https://images.wallpaperscraft.ru/image/single/ruchej_kaskadkamni_derevia_322305_1280x720.jpg')
                    .image,
                fit: BoxFit.cover),
            // borderRadius: BorderRadius.circular(20),
            // border: Border.all(color: Colors.brown, width: 8)
            shape: BoxShape.circle,
            boxShadow: const [
              BoxShadow(
                  color: Colors.black45, offset: Offset(15, 10), blurRadius: 5, spreadRadius: 5)
            ]),
        child: const Text(
          'ТЕКСТ',
          style: TextStyle(fontSize: 40, color: Colors.yellow),
        ),
      ),
    );
  }
}
