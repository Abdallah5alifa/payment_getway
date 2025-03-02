import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment/core/utils/assets_manager.dart';
import 'package:payment/core/widgets/custom_divider.dart';
import 'package:payment/features/checkout/data/repos/checkout_repo_impl.dart';
import 'package:payment/features/checkout/presentation/manager/payment_cubit.dart';
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
              showModalBottomSheet(
                context: context,
                builder:
                    (context) => BlocProvider(
                      create: (context) => PaymentCubit(CheckoutRepoImpl()),
                      child: PaymentMethodBottomSheet(),
                    ),
              );
            },
          ),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}
