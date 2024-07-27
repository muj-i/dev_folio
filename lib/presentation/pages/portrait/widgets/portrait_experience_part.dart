import 'package:dev_folio/presentation/utils/app_colors.dart';
import 'package:dev_folio/presentation/utils/app_theme.dart';
import 'package:flutter/material.dart';

class PortraitExperiencePart extends StatelessWidget {
  const PortraitExperiencePart(
      {super.key,
      required this.text1,
      required this.text2,
      required this.text3,
      required this.text4,
      this.text5,
      this.text6,
      this.text7,
      this.text8,
      this.text9,
      required this.urlText,
      required this.onTap,
      this.widget1,
      this.widget2});
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String? text5;
  final String? text6;
  final String? text7;
  final String? text8;
  final String? text9;
  final String urlText;
  final Function() onTap;
  final Widget? widget1;
  final Widget? widget2;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                AppColors.yellow.withOpacity(.1),
                AppColors.green.withOpacity(.4),
                AppColors.white.withOpacity(.1),
                AppColors.white.withOpacity(.1)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                text1,
                style: AppTheme.poppinsTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColors.black,
                ),
              ),
              Text(
                text2,
                style: AppTheme.poppinsTextStyle.copyWith(
                  fontSize: 18,
                  color: AppColors.black,
                ),
              ),
              Text(
                text3,
                style: AppTheme.poppinsTextStyle.copyWith(
                  fontSize: 18,
                  color: AppColors.black,
                ),
              ),
              Text(
                text4,
                style: AppTheme.poppinsTextStyle.copyWith(
                  fontSize: 18,
                  color: AppColors.black,
                ),
              ),
              // InkWell(
              //   onTap: () async {
              //     await launchUrl(Uri.parse(
              //         'https://www.icloud.com/iclouddrive/09cUao7OHItu4-OVeimpdsMzA#Experience_Letter'));
              //   },
              //   child: Text(
              //     'Letter of Experience.',
              //     style: AppTheme.poppinsTextStyle.copyWith(
              //         fontSize: 18,
              //         color: AppColors.blue,
              //         decoration: TextDecoration.underline,
              //         decorationColor: AppColors.blue),
              //   ),
              // ),
              InkWell(
                onTap: onTap,
                child: Text(
                  urlText,
                  style: AppTheme.poppinsTextStyle.copyWith(
                      fontSize: 18,
                      color: AppColors.blue,
                      decoration: TextDecoration.underline,
                      decorationColor: AppColors.blue),
                ),
              ),
              if (text5 != null) const SizedBox(height: 20),
              if (text5 != null)
                Text(
                  'Responsibilities:',
                  style: AppTheme.poppinsTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: AppColors.black,
                  ),
                ),
              if (text5 != null) const SizedBox(height: 10),
              if (text5 != null)
                Text(
                  text5 ?? '',
                  style: AppTheme.poppinsTextStyle.copyWith(
                    fontSize: 16,
                    color: AppColors.black,
                  ),
                ),
              if (text6 != null) const SizedBox(height: 10),
              if (text6 != null)
                Text(
                  text6 ?? '',
                  style: AppTheme.poppinsTextStyle.copyWith(
                    fontSize: 16,
                    color: AppColors.black,
                  ),
                ),
              if (text7 != null) const SizedBox(height: 10),
              if (text7 != null)
                Text(
                  text7 ?? '',
                  style: AppTheme.poppinsTextStyle.copyWith(
                    fontSize: 16,
                    color: AppColors.black,
                  ),
                ),
              if (text8 != null) const SizedBox(height: 10),
              if (text8 != null)
                Text(
                  text8 ?? '',
                  style: AppTheme.poppinsTextStyle.copyWith(
                    fontSize: 16,
                    color: AppColors.black,
                  ),
                ),
              if (text9 != null) const SizedBox(height: 10),
              if (text9 != null)
                Text(
                  text9 ?? '',
                  style: AppTheme.poppinsTextStyle.copyWith(
                    fontSize: 16,
                    color: AppColors.black,
                  ),
                ),
              if (widget1 != null) const SizedBox(height: 10),
              Text(
                'Contributions:',
                style: AppTheme.poppinsTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColors.black,
                ),
              ),
              widget1 ?? const SizedBox(),
              widget2 ?? const SizedBox(),
            ],
          ),
        ),
      ],
    );
  }
}
