/*
https://www.youtube.com/watch?v=_DPEtgtXIA0&list=PL6lh8cTntlDiLlH_rHl5F0JOy_gRm_Wa4&index=9
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
          title: const Text('Пример PageView'),
        ),
        body: PageViewWidget(),
        // body: const PageViewBuilderWidget(),
        // body: const PageViewCustomWidget(),
      ),
    );
  }
}

class PageViewWidget extends StatelessWidget {
  PageViewWidget({Key? key}) : super(key: key);

  final PageController controller = PageController(initialPage: 1);

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      // pageSnapping: false,
      physics: const BouncingScrollPhysics(),
      controller: controller,
      onPageChanged: (number) => print("Страница $number"),
      children: <Widget>[
        Container(
          color: Colors.redAccent,
          child: const Center(
            child: Text('СТОЙ'),
          ),
        ),
        Container(
          color: Colors.orangeAccent,
          child: const Center(
            child: Text('ГОТОВЬСЯ'),
          ),
        ),
        Container(
          color: Colors.green,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text(
              'ИДИ!',
              style: TextStyle(fontSize: 40),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.cyanAccent, onPrimary: Colors.blueAccent),
              onPressed: () {
                // controller.jumpToPage(0);
                controller.animateToPage(0,
                    duration: const Duration(seconds: 1), curve: Curves.easeInBack);
              },
              child: const Text(
                'ПЕРЕЗАГРУЗКА',
                style: TextStyle(color: Colors.black),
              ),
            )
          ]),
        ),
      ],
    );
  }
}

class PageViewBuilderWidget extends StatelessWidget {
  const PageViewBuilderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        // itemCount: 5,
        itemBuilder: (context, index) => Container(
          color: index % 2 == 0 ? Colors.greenAccent : Colors.redAccent,
          alignment: Alignment.center,
          child: Text('$index', style: const TextStyle(fontSize: 40),),
        ));
  }
}


class PageViewCustomWidget extends StatelessWidget {
  const PageViewCustomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.custom(
      childrenDelegate: SliverChildListDelegate([
       const Text('1'),
       const Text('2'),
       const Text('3'),
      ]),);
  }
}
