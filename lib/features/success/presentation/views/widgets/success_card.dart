import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment/core/utils/assets_manager.dart';
import 'package:payment/core/utils/styles.dart';
import 'package:payment/features/checkout/presentation/views/widgets/total_price_widget.dart';
import 'package:payment/features/success/presentation/views/widgets/card_info_widget.dart';
import 'package:payment/features/success/presentation/views/widgets/payment_item_info.dart';

import '../../../../../core/widgets/custom_divider.dart';

class SuccessCard extends StatelessWidget {
  const SuccessCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        color: Color.fromARGB(255, 231, 225, 225),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 66, left: 22, right: 22),
        child: Column(
          children: [
            Text('Thank you!', style: AppStyles.textStyle25),
            Text(
              'Your transaction was successful',
              style: AppStyles.textStyle20,
            ),
            const SizedBox(height: 42),
            PaymentItemInfo(title: 'Date', value: '01/24/2023'),
            const SizedBox(height: 20),
            PaymentItemInfo(title: 'Time', value: '10:15 AM'),
            const SizedBox(height: 20),
            PaymentItemInfo(title: 'To', value: 'Sam Louis'),
            const SizedBox(height: 13),
            CustomDivider(),
            TotalPrice(title: 'Total', value: '50.97\$'),
            const SizedBox(height: 30),
            CardInfoWidget(),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Icon(FontAwesomeIcons.barcode),
                SvgPicture.asset(AssetsManager.qrCodeImage),
                Container(
                  width: 113,
                  height: 60,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        width: 1.5,
                        color: Color(0xFF34A853),
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'PAID',
                      style: AppStyles.textStyle24.copyWith(
                        color: Color(0xFF34A853),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: ((MediaQuery.of(context).size.height * 0.2 + 20) / 3),
            ),
          ],
        ),
      ),
    );
  }
}
