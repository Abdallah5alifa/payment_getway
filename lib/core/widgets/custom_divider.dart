import 'package:flutter/material.dart';
import 'package:payment/core/utils/color_manager.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: ColorManager.dividerColor,
      thickness: 2,
      height: 34,
    );
  }
}