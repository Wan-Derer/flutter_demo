import 'package:flutter/material.dart';

void main() => runApp(const ScreenWidget());

class ScreenWidget extends StatelessWidget {
  const ScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Stateful WIDGET'),
        ),
        body: const SimpleWidget(),
      ),
    );
  }
}

class SimpleWidget extends StatefulWidget {
  const SimpleWidget({Key? key}) : super(key: key);

  @override
  _SimpleWidgetState createState() => _SimpleWidgetState();
}

class _SimpleWidgetState extends State<SimpleWidget> {
  int _count = 0;

  void _handleButton() {
    setState(() => _count++);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('$_count'),
          ElevatedButton(
            onPressed: () => _handleButton(),
            child: const Text('ПЛЮСУЙ!'),
          )
        ],
      ),
    );
  }
}
