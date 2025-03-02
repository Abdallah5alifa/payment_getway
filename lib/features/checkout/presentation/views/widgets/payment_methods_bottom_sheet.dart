import 'package:flutter/material.dart';
import 'package:payment/features/payment_details/presentation/views/widgets/payment_methods_list_view.dart';

import 'custom_button_bloc_consumer.dart';

class PaymentMethodBottomSheet extends StatelessWidget {
  const PaymentMethodBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 16),
          PaymentMethods(),
          SizedBox(height: 32),
          CustomButtomBlocConsumer(),
        ],
      ),
    );
  }
}
