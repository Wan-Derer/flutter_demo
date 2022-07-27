import 'package:flutter/material.dart';

void main() => runApp(const ScreenWidget());

class ScreenWidget extends StatelessWidget {
  const ScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Пример Column и Row'),
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.ideographic,
      verticalDirection: VerticalDirection.up,
      children: const <Widget>[
        TextWidget(
            key: Key("1"), color: Colors.limeAccent, width: 150, text: 'Первый', fontSize: 40),
        TextWidget(
            key: Key("2"), color: Colors.cyanAccent, width: 180, text: 'Второй', fontSize: 35),
        TextWidget(
            key: Key("3"), color: Colors.purpleAccent, width: 100, text: 'Третий', fontSize: 30)
      ],
    );
  }
}

class TextWidget extends StatelessWidget {
  final String text;
  final Color color;
  final double width;
  final double fontSize;

  const TextWidget(
      {required Key key,
      required this.text,
      required this.color,
      required this.width,
      required this.fontSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 100,
      color: color,
      child: Text(
        text,
        style: TextStyle(fontSize: fontSize),
      ),
    );
  }
}
