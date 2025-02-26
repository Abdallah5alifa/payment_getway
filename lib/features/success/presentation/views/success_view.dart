import 'package:flutter/material.dart';
import 'package:payment/core/widgets/custom_app_bar.dart';
import 'package:payment/features/success/presentation/views/widgets/success_view_body.dart';

class SuccessView extends StatelessWidget {
  const SuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: '', context: context),
      body: Transform.translate(
        offset: Offset(0,-16),
        child: const SuccessViewBody()));
  }
}
