import 'package:dev_folio/presentation/utils/app_theme.dart';
import 'package:dev_folio/presentation/utils/strtings.dart';
import 'package:dev_folio/presentation/widgets/item_card.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfessionalTraing extends StatelessWidget {
  const ProfessionalTraing({super.key});

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
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ItemCard(
                itemImage:
                    'https://raw.githubusercontent.com/muj-i/mocks/main/certificates/c7841-mujahedul-islam.png',
                itemName: 'Certificate of Completion - C7841',
                verifyText: 'Verify Certificate',
                onTapVerifyCertificate: () async {
                  await launchUrl(Uri.parse(
                      'https://ostad.app/share/certificate/c7841-mujahedul-islam'));
                },
              ),
            ),
            Expanded(
              child: ItemCard(
                itemImage:
                    'https://raw.githubusercontent.com/muj-i/mocks/main/certificates/a7843-mujahedul-islam.png',
                itemName: 'Certificate of Assessment - A7843',
                verifyText: 'Verify Assessment',
                onTapVerifyCertificate: () async {
                  await launchUrl(Uri.parse(
                      'https://ostad.app/share/certificate/a7843-mujahedul-islam'));
                },
              ),
            ),
            if (MediaQuery.of(context).size.width > 1150)
              Expanded(
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.transparent,
                ),
              )
          ],
        ),
      ],
    );
  }
}
