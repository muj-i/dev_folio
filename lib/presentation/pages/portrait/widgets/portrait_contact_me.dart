import 'package:dev_folio/presentation/utils/app_colors.dart';
import 'package:dev_folio/presentation/utils/app_theme.dart';
import 'package:dev_folio/presentation/utils/strtings.dart';
import 'package:dev_folio/presentation/widgets/shader_mas_widget.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PortraitContactMe extends StatelessWidget {
  const PortraitContactMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            AppStrings.contactMeText,
            style: AppTheme.poppinsTextStyle
                .copyWith(fontSize: 45, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 20),
        Text(AppStrings.userName,
            style: AppTheme.aBeeZeeTextStyle.copyWith(
                fontWeight: FontWeight.bold, wordSpacing: 5.0, fontSize: 22)),
        const SizedBox(height: 10),
        TextButton(
          onPressed: () async {
            await launchUrl(Uri.parse('tel:+8801875896897'));
          },
          child: Text('+880 18 7589 6897',
              style: AppTheme.aBeeZeeTextStyle.copyWith(fontSize: 18)),
        ),
        TextButton(
          onPressed: () async {
            await launchUrl(Uri.parse('mailto:dev.muj.i@icloud.com'));
          },
          child: Text('dev.muj.i@icloud.com',
              style: AppTheme.aBeeZeeTextStyle
                  .copyWith(wordSpacing: 5.0, fontSize: 18)),
        ),
        const SizedBox(height: 20),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          height: 1,
          width: double.infinity,
          color: AppColors.purpleGrey.withOpacity(.3),
        ),
        const SizedBox(height: 20),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Designed by',
                    style: AppTheme.aBeeZeeTextStyle.copyWith(fontSize: 10)),
                ShaderMaskWidget(
                  child: Text(' Pavan MG',
                      style: AppTheme.aBeeZeeTextStyle.copyWith(fontSize: 10)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Developed by',
                    style: AppTheme.aBeeZeeTextStyle.copyWith(fontSize: 10)),
                ShaderMaskWidget(
                  child: Text(' Mujahedul Islam',
                      style: AppTheme.aBeeZeeTextStyle.copyWith(fontSize: 10)),
                ),
              ],
            ),
            Text(' With ❤️',
                style: AppTheme.aBeeZeeTextStyle.copyWith(fontSize: 10)),
          ],
        )
      ],
    );
  }
}