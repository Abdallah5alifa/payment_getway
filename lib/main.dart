import 'package:flutter/material.dart';
import 'package:payment/features/checkout/presentation/views/my_cart_view.dart';


void main() {
  runApp(const ChaeckApp());
}
class ChaeckApp extends StatelessWidget {
  const ChaeckApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCartView(),
    );
  }
}