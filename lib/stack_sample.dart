/*
https://www.youtube.com/watch?v=KfMiaJLHnWY&list=PL6lh8cTntlDiLlH_rHl5F0JOy_gRm_Wa4&index=14
 */

import 'package:flutter/material.dart';
import 'package:flutter_demo/widgets/example.dart';
import 'package:flutter_demo/widgets/indexed.dart';
import 'package:flutter_demo/widgets/stack.dart';
import 'package:flutter_demo/widgets/positioned.dart';


void main() => runApp(const ScreenWidget());

class ScreenWidget extends StatelessWidget {
  const ScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Пример Stack Widget, Positioned Widget"),
        ),
        // body: const Example(),
        // body: const StackWidget(),
        // body: const PositionedWidget(),
        body: IndexedStackWidget(),
      ),
    );
  }
}


