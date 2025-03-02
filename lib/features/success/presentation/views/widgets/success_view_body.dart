import 'package:flutter/material.dart';
import 'package:payment/features/success/presentation/views/widgets/custom_check_circle.dart';
import 'package:payment/features/success/presentation/views/widgets/custom_dashed_line.dart';
import 'package:payment/features/success/presentation/views/widgets/success_card.dart';

class SuccessViewBody extends StatelessWidget {
  const SuccessViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          SuccessCard(),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.2 + 20,
            left: 28,
            right: 28,
            child: CustomDashedLine(),
          ),
          Positioned(
            left: -20,
            bottom: MediaQuery.of(context).size.height * 0.2,
            child: CircleAvatar(backgroundColor: Colors.white),
          ),
          Positioned(
            right: -20,
            bottom: MediaQuery.of(context).size.height * 0.2,
            child: CircleAvatar(backgroundColor: Colors.white),
          ),
          CustomCheckCircle(),
        ],
      ),
    );
  }
}
