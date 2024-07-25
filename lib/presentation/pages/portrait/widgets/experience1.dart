import 'package:dev_folio/presentation/pages/portrait/widgets/portrait_experience_part.dart';
import 'package:dev_folio/presentation/pages/portrait/widgets/seemore_shadow.dart';
import 'package:dev_folio/presentation/widgets/item_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class PortraitExperience1 extends StatelessWidget {
  const PortraitExperience1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final RxBool isShowMoreEnabled = false.obs;
    return PortraitExperiencePart(
      text1: 'Jr Software Engineer (Flutter)',
      text2: 'Bringin Technologies Limited,',
      text3: 'Uttara, Dhaka, Bangladesh.',
      text4: 'June 2023 - July 2024',
      urlText: 'getfit.com.bd',
      onTap: () async {
        await launchUrl(Uri.parse('https://getfit.com.bd/'));
      },
      text5:
          '• Designed and developed highly scalable features using GetX state management and REST APIs.',
      text6:
          '• Optimized app performance through code refactoring and efficient use of Socket.io for real-time updates.',
      text7:
          '• Successfully implemented Agora SDK for in-app voice and video calling, enhancing user engagement.',
      text8:
          '• Collaborated effectively within an Agile development team, adhering to CI/CD practices.',
      text9:
          '• Maintained clean and well-documented code, ensuring maintainability and code quality.',
      widget1: Stack(
        children: [
          ItemCard(
            itemImage:
                'https://raw.githubusercontent.com/muj-i/mocks/main/company_mocs/2.png',
            itemName: 'Unbolt',
            itemDescription:
                'Unbolt is an AI-driven recruitment app in Bangladesh. It offers direct chat-based engagement between job seekers and verified recruiters, ensuring complete privacy protection for both parties.',
            techStack:
                'Tech stack: Flutter, Firebase, Node.js, MongoDB, Socket.io',
            onTapAppStore: () async {
              await launchUrl(Uri.parse(
                  'https://apps.apple.com/us/app/unbolt-chat-based-hiring-app/id6463415765'));
            },
            onTapPlayStore: () async {
              await launchUrl(Uri.parse(
                  'https://play.google.com/store/apps/details?id=com.bringin.io'));
            },
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
            ? Column(
                children: [
                  ItemCard(
                    itemImage:
                        'https://raw.githubusercontent.com/muj-i/mocks/main/company_mocs/4.png',
                    itemName: 'Getfit',
                    itemDescription:
                        'Getfit is your all-in-one solution for personalized nutrition plans catering to a wide range of needs. Access consultations for expert guidance tailored to user specific goals.',
                    techStack:
                        'Tech stack: Flutter, Firebase, Nest.js, MongoDB, Socket.io, Agora SDK',
                    onTapAppStore: () async {
                      await launchUrl(Uri.parse(
                          'https://apps.apple.com/us/app/getfit-health-and-nutrition/id6479597777'));
                    },
                    onTapPlayStore: () async {
                      await launchUrl(Uri.parse(
                          'https://play.google.com/store/apps/details?id=com.getfit.client'));
                    },
                    isCompanyProject: true,
                  ),
                  ItemCard(
                    itemImage:
                        'https://raw.githubusercontent.com/muj-i/mocks/main/company_mocs/5.png',
                    itemName: 'Getfit Professional',
                    itemDescription:
                        'Getfit Professional is a the app nutritionists connect with clients and deliver personalized nutrition plans, ensuring effective support for users various health goals.',
                    techStack:
                        'Tech stack: Flutter, Firebase, Nest.js, MongoDB, Socket.io, Agora SDK',
                    onTapAppStore: () async {
                      await launchUrl(Uri.parse(
                          'https://apps.apple.com/us/app/getfit-professional/id6479810719'));
                    },
                    onTapPlayStore: () async {
                      await launchUrl(Uri.parse(
                          'https://play.google.com/store/apps/details?id=com.getfit.nutritionist'));
                    },
                    isCompanyProject: true,
                  ),
                  const SizedBox(height: 10),
                  OutlinedButton(
                      onPressed: () {
                        isShowMoreEnabled.value = false;
                      },
                      child: const Text('See Less'))
                ],
              )
            : const SizedBox();
      }),
    );
  }
}
