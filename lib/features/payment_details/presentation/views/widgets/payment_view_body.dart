import 'package:flutter/material.dart';
import 'package:payment/features/payment_details/presentation/views/widgets/custom_credit_card.dart';
import 'package:payment/features/success/presentation/views/success_view.dart';

import '../../../../../core/widgets/custom_buttom.dart';
import 'payment_methods_list_view.dart';

class PaymentViewBody extends StatefulWidget {
  const PaymentViewBody({super.key});

  @override
  State<PaymentViewBody> createState() => _PaymentViewBodyState();
}

class _PaymentViewBodyState extends State<PaymentViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: PaymentMethods()),
        SliverToBoxAdapter(
          child: CustomCreditCard(
            formKey: formKey,
            autovalidateMode: autovalidateMode,
          ),
        ),
        SliverFillRemaining(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 16, right: 16, left: 16),
              child: CustomButtom(
                text: 'Pay',
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                  } else {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const SuccessView(),
                      ),
                    );
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
