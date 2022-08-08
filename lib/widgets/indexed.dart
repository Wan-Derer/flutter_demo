import 'package:flutter/material.dart';
import 'package:flutter_demo/widgets/aboutIsland.dart';
import 'package:flutter_demo/widgets/backgroundImage.dart';
import 'package:flutter_demo/widgets/heartIcon.dart';

class IndexedStackWidget extends StatefulWidget {
  @override
  _IndexedStackWidgetState createState() => _IndexedStackWidgetState();
}

class _IndexedStackWidgetState extends State {
  int _index = 0;
  double size = 100.0;

  void _switchLayout() {
    if(_index != 2){
      setState(() {
        _index++;
        size += 100.0;
      });
    } else{
      setState(() {
        _index = 0;
        size = 50.0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IndexedStack(
              index: _index,
              children: [
                AnimatedSquare(size, Colors.redAccent),
                AnimatedSquare(size, Colors.orangeAccent),
                AnimatedSquare(size, Colors.greenAccent),
              ]
          ),
          ElevatedButton(
            onPressed: () => _switchLayout(),
            style: ElevatedButton.styleFrom(primary: Colors.blue, textStyle: const TextStyle(color: Colors.white)),
            // style: ButtonStyle(
            //     backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            //   // foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            //   textStyle: MaterialStateProperty.all<TextStyle>(const TextStyle(color: Colors.white))
            // ),
            child: const Text('КНОПКА'),
          )
        ],
      )
    );
  }
}

class AnimatedSquare extends StatelessWidget {
  final double size;
  final Color color;

  const AnimatedSquare(this.size, this.color, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      curve: Curves.easeInBack,
      duration: const Duration(seconds: 1),
      width: size,
      height: size,
      color: color,
    );
  }
}
