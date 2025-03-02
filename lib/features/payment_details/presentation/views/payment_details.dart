import 'package:flutter/material.dart';
import 'package:payment/core/widgets/custom_app_bar.dart';

import 'widgets/payment_view_body.dart';

class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: 'Payment Details', context: context),
      body: const PaymentViewBody(),
    );
  }
}
