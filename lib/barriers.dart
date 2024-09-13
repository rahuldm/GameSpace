import 'package:flutter/material.dart';

class MyBarrier extends StatelessWidget {
  final double size;

  const MyBarrier({required this.size});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth / 7,
      height: size,
      decoration: BoxDecoration(
        color: Colors.greenAccent,
        border: Border.all(
          width: 4,
          color: Color.fromARGB(255, 136, 58, 58),
        ),
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
