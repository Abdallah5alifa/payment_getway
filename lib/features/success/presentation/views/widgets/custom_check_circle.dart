import 'package:flutter/material.dart';

class CustomCheckCircle extends StatelessWidget {
  const CustomCheckCircle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      top: -50,
      child: CircleAvatar(
        radius: 50,
        backgroundColor: Color.fromARGB(255, 231, 225, 225),
        child: CircleAvatar(
          radius: 40,
          backgroundColor: Colors.green,
          child: Icon(Icons.check, size: 50, color: Colors.white),
        ),
      ),
    );
  }
}