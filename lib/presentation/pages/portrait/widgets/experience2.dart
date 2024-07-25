import 'package:dev_folio/presentation/pages/portrait/widgets/portrait_experience_part.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PortraitExperience2 extends StatelessWidget {
  const PortraitExperience2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PortraitExperiencePart(
      text1: 'Flutter Developer',
      text2: 'Code Village,',
      text3: 'Dhaka - 1230, Bangladesh.',
      text4: 'May 2022 - June 2023',
      urlText: 'codevillage.com.bd',
      onTap: () async {
        await launchUrl(Uri.parse('https://codevillage.com.bd/'));
      },
      text5:
          '• Developed highly scalable flutter application using Provider state management and REST APIs.',
      text6: '• Worked collaboratively within an agile development team.',
      text7:
          '• Ensured code maintainability and quality by keeping the codebase clean and well-documented.',
    );
  }
}
