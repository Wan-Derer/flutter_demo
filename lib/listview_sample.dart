import 'package:flutter/material.dart';

void main() => runApp(const ScreenWidget());

class ScreenWidget extends StatelessWidget {
  const ScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Пример ListView Widget'),
        ),
        body: const ListViewCustomWidget(),
      ),
    );
  }
}

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      // scrollDirection: Axis.horizontal,
      // reverse: true,
      // controller: ScrollController(initialScrollOffset: 100),
      // physics: const ClampingScrollPhysics(),
      padding: const EdgeInsets.all(20),
      children: const <Widget>[
        TextWidget(text: "один"),
        TextWidget(text: "два"),
        TextWidget(text: "три"),
        TextWidget(text: "4"),
        TextWidget(text: "пять"),
        TextWidget(text: "шесть"),
        TextWidget(text: "семь"),
        TextWidget(text: "8"),
        TextWidget(text: "9"),
        TextWidget(text: "10"),
      ],
    );
  }
}

class ListViewBuilderWidget extends StatelessWidget {
  const ListViewBuilderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        // itemCount: 20,
        itemBuilder: (context, index) {
      return TextWidget(text: '$index');
    });
  }
}

class ListViewSeparateWidget extends StatelessWidget {
  const ListViewSeparateWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return const Divider(
          color: Colors.purpleAccent,
          thickness: 4,
        );
      },
      itemCount: 20,
      itemBuilder: (context, index) {
        return TextWidget(text: '$index');
      },
    );
  }
}

class ListViewCustomWidget extends StatelessWidget {
  const ListViewCustomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.custom(
      childrenDelegate: SliverChildBuilderDelegate((context, index) {
        return TextWidget(text: '$index');
      }),
    );
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 1)),
      child: Text(
        text,
        style: const TextStyle(fontSize: 40),
      ),
    );
  }
}
