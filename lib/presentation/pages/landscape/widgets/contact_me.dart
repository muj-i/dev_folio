import 'package:dev_folio/presentation/utils/app_colors.dart';
import 'package:dev_folio/presentation/utils/app_theme.dart';
import 'package:dev_folio/presentation/utils/strtings.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactMe extends StatelessWidget {
  const ContactMe({super.key});

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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Text(AppStrings.userName,
                  style: AppTheme.aBeeZeeTextStyle.copyWith(
                      fontWeight: FontWeight.bold,
                      wordSpacing: 5.0,
                      fontSize: 22)),
              const Spacer(),
              TextButton(
                onPressed: () async {
                  await launchUrl(Uri.parse('tel:+8801875896897'));
                },
                child: Text('+880 18 7589 6897',
                    style: AppTheme.aBeeZeeTextStyle.copyWith(fontSize: 16)),
              ),
              TextButton(
                onPressed: () async {
                  await launchUrl(Uri.parse('mailto:dev.muj.i@icloud.com'));
                },
                child: Text('dev.muj.i@icloud.com',
                    style: AppTheme.aBeeZeeTextStyle
                        .copyWith(wordSpacing: 5.0, fontSize: 16)),
              ),
              const SizedBox(width: 30),
              IconButton(
                  onPressed: () async {
                    await launchUrl(Uri.parse('https://github.com/muj-i'));
                  },
                  icon: const Icon(FontAwesomeIcons.squareGithub)),
              const SizedBox(width: 2),
              IconButton(
                  onPressed: () async {
                    await launchUrl(
                        Uri.parse('https://www.linkedin.com/in/muj-i/'));
                  },
                  icon: const Icon(FontAwesomeIcons.linkedin)),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          height: 1,
          width: double.infinity,
          color: AppColors.purpleGrey.withOpacity(.3),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
