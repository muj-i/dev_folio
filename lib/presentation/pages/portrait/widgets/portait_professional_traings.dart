import 'package:dev_folio/presentation/utils/app_theme.dart';
import 'package:dev_folio/presentation/utils/strtings.dart';
import 'package:dev_folio/presentation/widgets/item_card.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PortraitProfessionalTraing extends StatelessWidget {
  const PortraitProfessionalTraing({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            'Professional ${AppStrings.professionalTraining}',
            style: AppTheme.poppinsTextStyle
                .copyWith(fontSize: 45, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 20),
        ItemCard(
          itemImage:
              'https://raw.githubusercontent.com/muj-i/mocks/main/certificates/c7841-mujahedul-islam.png',
          itemName: 'Certificate of Completion - Flutter - C7841',
          verifyText: 'Verify Certificate',
          onTapVerifyCertificate: () async {
            await launchUrl(Uri.parse(
                'https://ostad.app/share/certificate/c7841-mujahedul-islam'));
          },
        ),
        ItemCard(
          itemImage:
              'https://raw.githubusercontent.com/muj-i/mocks/main/certificates/a7843-mujahedul-islam.png',
          itemName: 'Certificate of Assessment - Flutter - A7843',
          verifyText: 'Verify Assessment',
          onTapVerifyCertificate: () async {
            await launchUrl(Uri.parse(
                'https://ostad.app/share/certificate/a7843-mujahedul-islam'));
          },
        ),
        ItemCard(
          itemImage:
              'https://raw.githubusercontent.com/muj-i/mocks/main/certificates/c27064-mujahedul-islam.png',
          itemName: 'Certificate of Completion - MERN - C27064',
          verifyText: 'Verify Certificate',
          onTapVerifyCertificate: () async {
            await launchUrl(Uri.parse(
                'https://ostad.app/share/certificate/c27064-mujahedul-islam'));
          },
        ),
        ItemCard(
          itemImage:
              'https://raw.githubusercontent.com/muj-i/mocks/main/certificates/a27065-mujahedul-islam.png',
          itemName: 'Certificate of Assessment - MERN - A27065',
          verifyText: 'Verify Assessment',
          onTapVerifyCertificate: () async {
            await launchUrl(Uri.parse(
                'https://ostad.app/share/certificate/a27065-mujahedul-islam'));
          },
        ),
        ItemCard(
          itemImage:
              'https://raw.githubusercontent.com/muj-i/mocks/main/certificates/c26321-mujahedul-islam.png',
          itemName: 'Certificate of Completion - Go Workshop - C26321',
          verifyText: 'Verify Certificate',
          onTapVerifyCertificate: () async {
            await launchUrl(Uri.parse(
                'https://ostad.app/share/certificate/c26321-mujahedul-islam'));
          },
        ),
      ],
    );
  }
}
