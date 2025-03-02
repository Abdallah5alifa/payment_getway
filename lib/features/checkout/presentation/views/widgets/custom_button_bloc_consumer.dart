import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment/features/checkout/data/models/payment_intent_input_model.dart';
import 'package:payment/features/checkout/presentation/manager/payment_cubit.dart';
import 'package:payment/features/success/presentation/views/success_view.dart';

import '../../../../../core/widgets/custom_buttom.dart';

class CustomButtomBlocConsumer extends StatelessWidget {
  const CustomButtomBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentCubit, PaymentState>(
      listener: (context, state) {
        if (state is PaymentSuccess) {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const SuccessView()),
          );
        }
        if (state is PaymentFailure) {
          Navigator.of(context).pop();
          SnackBar snackBar = SnackBar(content: Text(state.errMassage));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      builder: (context, state) {
        return CustomButtom(
          isLoading: state is PaymentLoading ? true : false,
          text: 'Continue ',
          onPressed: () {
            PaymentIntentInputModel paymentIntentInputModel =
                PaymentIntentInputModel(
                  amount: '100',
                  currency: 'USD',
                  customerId: 'cus_RrjK5dJlmMjsAb',
                );
            context.read<PaymentCubit>().makePayment(
              paymentIntentInputModel: paymentIntentInputModel,
            );
          },
        );
      },
    );
  }
}
