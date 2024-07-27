import 'package:dev_folio/presentation/pages/portrait/widgets/portrait_experience_part.dart';
import 'package:dev_folio/presentation/pages/portrait/widgets/seemore_shadow.dart';
import 'package:dev_folio/presentation/widgets/item_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class PortraitExperience2 extends StatelessWidget {
  const PortraitExperience2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final RxBool isShowMoreEnabled = false.obs;

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
      widget1: Stack(
        children: [
          const ItemCard(
            itemImage:
                'https://raw.githubusercontent.com/muj-i/mocks/main/company_mocs/code-vill/makan.png',
            itemName: 'MyMakan',
            itemDescription:
                'MyMakan is a real state app that helps you find the perfect place to live. It provides a wide range of properties to buy, rent, or share.',
            techStack: 'Tech stack: Flutter, Firebase, Nest.js, MongoDB',
            isCompanyProject: true,
          ),
          Obx(() {
            return isShowMoreEnabled.value == true
                ? const SizedBox()
                : Positioned(
                    top: 260,
                    left: 0,
                    right: 0,
                    child: SeeMoreShadow(
                      buttonTop: 245,
                      height: 430,
                      isShowMoreEnabled: isShowMoreEnabled,
                    ));
          }),
        ],
      ),
      widget2: Obx(() {
        return isShowMoreEnabled.value == true
            ? const ItemCard(
                itemImage:
                    'https://raw.githubusercontent.com/muj-i/mocks/main/company_mocs/code-vill/tv.png',
                itemName: 'RajDhaniTV',
                itemDescription:
                    'A TV app that provides live streaming of various TV channels. It also has a feature to watch missed programs.',
                techStack: 'Tech stack: Flutter, Firebase, Laravel...',
                isCompanyProject: true,
              )
            : const SizedBox();
      }),
    );
  }
}
