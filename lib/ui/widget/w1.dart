import 'package:flutter/material.dart';

class W1 extends StatelessWidget {
  const W1({super.key, required this.add, required this.sub, required this.value});
  //final VoidCallback onAdd; // call like this: onPressed: () => onAdd(),
  final double value;
  final Function add;
  final Function sub;

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
              key: const Key('W1Value'),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            color: Theme.of(context).colorScheme.inversePrimary,
            child: Column(
              children: [
                IconButton(
                    onPressed: () {
                      add();
                    },
                    icon: const Icon(Icons.add),
                    key: const Key('W1Add')),
                IconButton(
                    onPressed: () {
                      sub();
                    },
                    icon: const Icon(Icons.remove),
                    key: const Key('W1Sub'))
              ],
            ),
          )
        ],
      ),
    );
  }
}
