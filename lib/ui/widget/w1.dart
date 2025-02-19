import 'package:flutter/material.dart';

 
class W3 extends StatelessWidget {
  const W3({super.key, required this.add1, required this.sub1, required this.value});
  final double value;
  final Function add1;
  final Function sub1;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      margin: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            color: Theme.of(context).colorScheme.inversePrimary,
            child: Text(
              value.toStringAsFixed(1),
              key: const Key('W3Value'),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            color: Theme.of(context).colorScheme.inversePrimary,
            child: Column(
              children: [
                IconButton(
                    onPressed: () {
                      add1();
                    },
                    icon: const Icon(Icons.add),
                    key: const Key('W3Add')),
                IconButton(
                    onPressed: () {
                      sub1();
                    },
                    icon: const Icon(Icons.remove),
                    key: const Key('W3Sub'))
              ],
            ),
          )
        ],
      ),
    );
    ;
  }
}
