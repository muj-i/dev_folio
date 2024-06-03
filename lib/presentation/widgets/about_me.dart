import 'package:dev_folio/presentation/utils/app_colors.dart';
import 'package:dev_folio/presentation/utils/app_theme.dart';
import 'package:dev_folio/presentation/utils/strtings.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            AppStrings.aboutMeText,
            style: AppTheme.poppinsTextStyle
                .copyWith(fontSize: 45, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 20),
        Text(
          AppStrings.aboutMeDescription,
          style: AppTheme.poppinsTextStyle.copyWith(
            fontSize: 16,
            color: AppColors.black,
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.purpleGrey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          onPressed: () async {
            await launchUrl(Uri.parse(
                'https://github.com/muj-i/muj-i/blob/main/Mujahedul_Islam%20-%20resume.pdf'));
          },
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(FontAwesomeIcons.fileArrowDown, size: 15),
              SizedBox(width: 10),
              Text('Download Resume')
            ],
          ),
        ),
      ],
    );
  }
}
