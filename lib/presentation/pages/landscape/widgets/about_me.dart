import 'package:dev_folio/presentation/utils/app_colors.dart';
import 'package:dev_folio/presentation/utils/app_theme.dart';
import 'package:dev_folio/presentation/utils/strtings.dart';
import 'package:flutter/material.dart';

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
                .copyWith(fontSize: 48, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 20),
        Text(
          AppStrings.aboutMeDescription,
          style: AppTheme.poppinsTextStyle.copyWith(
            fontSize: 22,
            color: AppColors.black,
          ),
        ),
      ],
    );
  }
}
