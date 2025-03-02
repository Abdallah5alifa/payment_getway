import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payment/core/utils/assets_manager.dart';
import 'package:payment/core/utils/styles.dart';

class CardInfoWidget extends StatelessWidget {
  const CardInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 16),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: Colors.white,
      ),
      child: Row(
        children: [
          SvgPicture.asset(AssetsManager.mastercardImage),
          const SizedBox(width: 23),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Credit Card\n',
                  style: AppStyles.textStyleBold18,
                ),
                TextSpan(text: 'Mastercard **78', style: AppStyles.textStyle18),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
