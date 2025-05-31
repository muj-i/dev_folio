import 'package:dev_folio/presentation/pages/landscape/widgets/experience_part.dart';
import 'package:dev_folio/presentation/widgets/item_card.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Experience0 extends StatelessWidget {
  const Experience0({super.key});

  @override
  Widget build(BuildContext context) {
    return ExperiencePart(
      text1: 'Software Engineer I',
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
      widget: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: ItemCard(
                  itemName: 'sheba.xyz',
                  itemImage: 'https://raw.githubusercontent.com/muj-i/mocks/main/company_mocs/sx.jpeg',
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
              ),
              Expanded(
                child: ItemCard(
                  itemName: 'sPro',
                  itemImage: 'https://raw.githubusercontent.com/muj-i/mocks/main/company_mocs/sp.png',
                  itemDescription:
                      'sPro is a service provider app for Sheba.xyz. It helps service providers to manage their services, bookings, and earnings.',
                  techStack: 'Tech stack: Flutter, Laravel, MySQL, Docker...',
                  onTapAppStore: () async {
                    await launchUrl(Uri.parse(
                        'https://apps.apple.com/us/app/sheba-xyz-service-platform/id1511707916'));
                  },
                  onTapPlayStore: () async {
                    await launchUrl(Uri.parse(
                        'https://play.google.com/store/apps/details?id=xyz.sheba.resource'));
                  },
                  isCompanyProject: true,
                ),
              ),
              Expanded(
                child: ItemCard(
                  itemName: 'sheba manager',
                  itemImage: 'https://raw.githubusercontent.com/muj-i/mocks/main/company_mocs/sm.png',
                  itemDescription:
                      'sheba manager is a pos system for small businesses. It helps businesses to manage their sales, inventory, and employees.',
                  techStack: 'Tech stack: Flutter, Laravel, MySQL, Docker...',
                  // onTapAppStore: () async {
                  //   await launchUrl(Uri.parse(
                  //       'https://apps.apple.com/us/app/sheba-xyz-service-platform/id1399019504'));
                  // },
                  onTapPlayStore: () async {
                    await launchUrl(Uri.parse(
                        'https://play.google.com/store/apps/details?id=xyz.sheba.managerapp'));
                  },
                  isCompanyProject: true,
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: ItemCard(
                  itemName: 'digiGO',
                  itemImage: 'https://raw.githubusercontent.com/muj-i/mocks/main/company_mocs/dg.png',
                  itemDescription:
                      'digiGO is a comprehensive HR management system that helps organizations manage their employees, attendance, leaves, payroll, and more.',
                  techStack: 'Tech stack: Flutter, Laravel, MySQL, Docker...',
                  onTapAppStore: () async {
                    await launchUrl(Uri.parse(
                        'https://apps.apple.com/us/app/digigo-hr-management-app/id1491939278'));
                  },
                  onTapPlayStore: () async {
                    await launchUrl(Uri.parse(
                        'https://play.google.com/store/apps/details?id=xyz.sheba.emanager'));
                  },
                  isCompanyProject: true,
                ),
              ),
              const Expanded(
                child: SizedBox(
                  height: 300,
                  width: 300,
                ),
              ),
              const Expanded(
                child: SizedBox(
                  height: 300,
                  width: 300,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
