import 'package:dev_folio/presentation/pages/portrait/widgets/portrait_experience_part.dart';
import 'package:dev_folio/presentation/widgets/item_card.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PortraitExperience0 extends StatelessWidget {
  const PortraitExperience0({super.key});

  @override
  Widget build(BuildContext context) {
    return PortraitExperiencePart(
      text1: 'Software Engineer I (Flutter)',
      text2: 'Sheba Platform Limited,',
      text3: 'Mohakhali DOHS, Dhaka, Bangladesh.',
      text4: 'July 2024 - Present',
      urlText: 'sheba-platform.xyz',
      onTap: () async {
        await launchUrl(Uri.parse('https://sheba-platform.xyz/'));
      },
      text5:
          '• Maintain and enhance the existing codebase, ensuring stability and performance in the production app.',
      text6:
          '• Develop and integrate new features while upholding high code quality and clean, well-documented code.',
      text7:
          '• Collaborate with a dynamic tech team to ensure seamless project execution and effective teamwork.',
      text8:
          '• Utilize Riverpod for state management, focusing on optimization and scalability to improve app performance.',
      text9:
          '• Handle the production application, ensuring stability, performance, and quick resolution of issues.',
      widget1: ItemCard(
        itemImage:
            'https://raw.githubusercontent.com/muj-i/mocks/main/company_mocs/sheba/sheba_xyz.png',
        itemName: 'sheba.xyz',
        itemDescription:
            'Sheba.xyz is the first and the largest local service marketplace in Bangladesh for all urban lifestyle services. We help you to hire local service provider and to get things done without any hassle.',
        techStack: 'Tech stack: Flutter, Laravel, MySQL, Docker...',
        onTapAppStore: () async {
          await launchUrl(Uri.parse(
              'https://apps.apple.com/us/app/sheba-xyz-service-platform/id1399019504'));
        },
        onTapPlayStore: () async {
          await launchUrl(Uri.parse(
              'https://play.google.com/store/apps/details?id=xyz.sheba.customersapp'));
        },
        isCompanyProject: true,
      ),
    );
  }
}
