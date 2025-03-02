import 'package:flutter/material.dart';
import 'package:payment/core/utils/color_manager.dart';
import 'package:payment/core/utils/styles.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({
    super.key,
    required this.text,
    required this.onPressed,
    this.isLoading = false,
  });
  final String text;
  final VoidCallback onPressed;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 65),
        backgroundColor: ColorManager.primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      ),
      child:
          isLoading
              ? const CircularProgressIndicator()
              : Text(text, style: AppStyles.textStyle22),
    );
  }
}
