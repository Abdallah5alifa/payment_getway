import 'package:flutter/material.dart';
import 'package:payment/features/checkout/presentation/views/widgets/my_cart_view_body.dart';

import '../../../../core/widgets/custom_app_bar.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: 'My Cart', context: context),
      body: MyCartViewBody(),
    );
  }
}
