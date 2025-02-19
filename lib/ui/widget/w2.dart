import 'package:flutter/material.dart';

class W2 extends StatelessWidget {
  const W2({super.key, required this.value});
  final double value ;
  @override
  Widget build(BuildContext context) {
    double value2 = double.parse(value.toStringAsFixed(1)) - double.parse(value.toStringAsFixed(1)).toInt();
    return Container(
      key: const Key('W2'),
      width: 200,
      height: 200,
      color: double.parse(value2.toStringAsFixed(1)) > 0.4 ? Colors.blueGrey : const Color.fromARGB(255, 244, 54, 158), // should be grey when the decimal is bellow 0.4
    );
  }
}