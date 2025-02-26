

import 'package:flutter/material.dart';
import 'package:payment/features/payment_details/presentation/views/widgets/payment_method.dart';

import '../../../../../core/utils/assets_manager.dart';

class PaymentMethods extends StatefulWidget {
  const PaymentMethods({super.key});

  @override
  State<PaymentMethods> createState() => _PaymentMethodsState();
}

class _PaymentMethodsState extends State<PaymentMethods> {
  final List<String> paymentMethods = const [
    AssetsManager.paymentImage,
    AssetsManager.paypalImage,
    AssetsManager.applepayImage,
  ];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: paymentMethods.length,
        itemBuilder:
            (context, index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: InkWell(
                onTap: () {
                  setState(() {
                    activeIndex = index;
                  });
                },
                child: PaymentMethod(
                  isActive:activeIndex == index ? true : false,
                  paymentImage: paymentMethods[index],
                ),
              ),
            ),
      ),
    );
  }
}
