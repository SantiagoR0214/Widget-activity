import 'package:flutter/material.dart';

import '../widget/w1.dart';
import '../widget/w2.dart';
import '../widget/w3.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      value=0;
                    });
                  },
                  icon: const Icon(Icons.refresh),
                  key: const Key('Refresh')),
            ],
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[W1(value:value,add:_add, sub: _sub,), W2(value:value), W3(value:value,add1:_add1, sub1: _sub1,)],
            ),
          ),
        ],
      )),
    );
  }

  void _add(){
    setState(() {
      value = value+0.1;
    });
  }

  void _add1(){
    setState(() {
      value = value+1;
    });
  }

  void _sub(){
    setState(() {
      value = value-0.1;
    });
  }

  void _sub1(){
    setState(() {
      value = value-1;
    });
  }
}
