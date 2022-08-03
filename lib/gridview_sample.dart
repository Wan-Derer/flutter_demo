/*
https://www.youtube.com/watch?v=ZudufqYrpco&list=PL6lh8cTntlDiLlH_rHl5F0JOy_gRm_Wa4&index=8
 */

import 'package:flutter/material.dart';

void main() => runApp(const ScreenWidget());

class ScreenWidget extends StatelessWidget {
  const ScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Пример GridView'),
        ),
        // body: const GridViewWidget(),
        // body: const GridViewBuilderWidget(),
        // body: const GridViewCountWidget(),
        // body: const GridViewExtentWidget(),
        body: const GridViewCustomWidget(),
      ),
    );
  }
}

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      children: const <Widget>[
        TextWidget(text: '1',),
        TextWidget(text: '2',),
        TextWidget(text: '3',),
        TextWidget(text: '4',),
        TextWidget(text: '5',),
        TextWidget(text: '6',),
        TextWidget(text: '7',),
        TextWidget(text: '8',),
        TextWidget(text: '9',),
        TextWidget(text: '10',),
      ],
    );
  }
}

class GridViewBuilderWidget extends StatelessWidget {
  const GridViewBuilderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      // itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return TextWidget(text: '$index');
      },
    );
  }
}

class GridViewCountWidget extends StatelessWidget {
  const GridViewCountWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      children: const <Widget>[
        TextWidget(text: '1',),
        TextWidget(text: '2',),
        TextWidget(text: '3',),
        TextWidget(text: '4',),
        TextWidget(text: '5',),
        TextWidget(text: '6',),
        TextWidget(text: '7',),
        TextWidget(text: '8',),
        TextWidget(text: '9',),
        TextWidget(text: '10',),
      ],
    );
  }

}

class GridViewExtentWidget extends StatelessWidget {
  const GridViewExtentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final queryData = MediaQuery.of(context);
    print(queryData.size);

    return Container(
        width: 300,
        color: Colors.lightGreenAccent,

        child: GridView.extent(
          maxCrossAxisExtent: 99,
          // maxCrossAxisExtent: 100,
          children: const <Widget>[
            TextWidget(text: '1',),
            TextWidget(text: '2',),
            TextWidget(text: '3',),
            TextWidget(text: '4',),
            TextWidget(text: '5',),
            TextWidget(text: '6',),
            TextWidget(text: '7',),
            TextWidget(text: '8',),
            TextWidget(text: '9',),
            TextWidget(text: '10',),
          ],
        )
    );
  }

}

class GridViewCustomWidget extends StatelessWidget {
  const GridViewCustomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final queryData = MediaQuery.of(context);
    print(queryData.size);

    return GridView.custom(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),

      // childrenDelegate: SliverChildListDelegate([
      //   const TextWidget(text: '1',),
      //   const TextWidget(text: '2',),
      //   const TextWidget(text: '3',),
      //   const TextWidget(text: '4',),
      //   const TextWidget(text: '5',),
      //   const TextWidget(text: '6',),
      //   const TextWidget(text: '7',),
      //   const TextWidget(text: '8',),
      //   const TextWidget(text: '9',),
      //   const TextWidget(text: '10',),
      // ],),

      childrenDelegate: SliverChildBuilderDelegate((context, index) {
        return TextWidget(text: '$index');
      }, childCount: 15));
  }

}

class TextWidget extends StatelessWidget {
  const TextWidget({required this.text, Key? key}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      // padding: const EdgeInsets.all(20),
      // margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 1)),
      child: Text(
        text,
        style: const TextStyle(fontSize: 40),
      ),
    );
  }
}
