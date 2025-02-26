import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/color_manager.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({
    super.key,
    required this.isActive,
    required this.paymentImage,
  });
  final bool isActive;
  final String paymentImage;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 400),
      width: 110,
      height: 70,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 2,
            color:
                isActive
                    ? ColorManager.primaryColor
                    : ColorManager.dividerColor,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        shadows:
            isActive
                ? [
                  BoxShadow(
                    color: ColorManager.primaryColor,
                    spreadRadius: 0,
                    blurRadius: 7,
                    offset: const Offset(0, 0),
                  ),
                ]
                : [],
      ),
      child: Container(
        // padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: SvgPicture.asset(fit: BoxFit.scaleDown, paymentImage),
        ),
      ),
    );
  }
}
