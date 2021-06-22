import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_images.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';

class SocialLoginButton extends StatelessWidget {
  final VoidCallback onTap;
  const SocialLoginButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.shape,
          borderRadius: BorderRadius.circular(29),
          border: Border.fromBorderSide(
            BorderSide(color: AppColors.stroke),
          ),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Container(width: 12),
                  Image.asset(AppImages.google),
                  SizedBox(
                    width: 8,
                  ),
                  Container(
                    height: 50,
                    width: 1,
                    color: AppColors.stroke,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Entrar com Google",
                    style: AppTextStyles.buttonGray,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
