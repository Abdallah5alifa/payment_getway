import 'package:flutter/material.dart';
import 'package:payment/core/utils/assets_manager.dart';
import 'package:payment/core/widgets/custom_divider.dart';
import 'package:payment/features/checkout/presentation/views/widgets/order_info_item.dart';
import 'package:payment/features/checkout/presentation/views/widgets/payment_methods_bottom_sheet.dart';
import 'package:payment/features/checkout/presentation/views/widgets/total_price_widget.dart';

import '../../../../../core/widgets/custom_buttom.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Expanded(child: Image.asset(AssetsManager.basketImage)),
          SizedBox(height: 15),
          OrderInfoItem(title: 'Order Subtotal', value: r'42.97$'),
          SizedBox(height: 3),
          OrderInfoItem(title: 'Discount', value: r'0$'),
          SizedBox(height: 3),
          OrderInfoItem(title: 'Shipping', value: r'8$'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: CustomDivider(),
          ),
          TotalPrice(title: 'Total', value: r'50.97$'),
          SizedBox(height: 16),
          CustomButtom(
            text: 'Complete Payment',
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => PaymentDetailsView()),
              // );
              showModalBottomSheet(
                context: context,

                builder: (context) => PaymentMethodBottomSheet(),
              );
            },
          ),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}


