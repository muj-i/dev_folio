import 'package:dev_folio/presentation/pages/portrait/widgets/seemore_shadow.dart';
import 'package:dev_folio/presentation/utils/app_theme.dart';
import 'package:dev_folio/presentation/utils/strtings.dart';
import 'package:dev_folio/presentation/widgets/item_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class PortraitProjectsPart extends StatelessWidget {
  const PortraitProjectsPart({super.key});

  @override
  Widget build(BuildContext context) {
    final RxBool isShowMoreEnabled = false.obs;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Text(
            AppStrings.projects,
            style: AppTheme.poppinsTextStyle
                .copyWith(fontSize: 45, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 20),
        Stack(
          children: [
            ItemCard(
              itemImage:
                  'https://raw.githubusercontent.com/muj-i/mocks/main/crafty_bay.png',
              itemName: 'CraftyBay',
              itemDescription:
                  'CraftyBay is a feature-rich ecommerce app designed to provide users with a seamless and enjoyable shopping experience. With a focus on user-friendliness and a wide range of products, CraftyBay allows users to explore, purchase, and review products with ease.',
              techStack: 'Tech stack: Flutter, Laravel, MySQL',
              onTapGithub: () async {
                await launchUrl(
                    Uri.parse('https://github.com/muj-i/crafty_bay'));
              },
              onTapYoutube: () async {
                await launchUrl(Uri.parse(
                    'https://youtu.be/XqyM8PjxwwY?si=LrlHvkVDRe_XgfpV'));
              },
              onTapAndroid: () async {
                await launchUrl(Uri.parse(
                    'https://github.com/muj-i/crafty_bay/releases/download/v1.a1/CraftyBay.apk'));
              },
            ),
            Obx(() {
              return isShowMoreEnabled.value == true
                  ? const SizedBox()
                  : Positioned(
                      top: 300,
                      left: 0,
                      right: 0,
                      child: SeeMoreShadow(
                        buttonTop: 270,
                        height: 430,
                        isShowMoreEnabled: isShowMoreEnabled,
                      ));
            }),
          ],
        ),
        Obx(() {
          return isShowMoreEnabled.value == true
              ? Column(
                  children: [
                    ItemCard(
                      itemImage:
                          'https://raw.githubusercontent.com/muj-i/mocks/main/ProgressPal.png',
                      itemName: 'ProgressPal',
                      itemDescription:
                          'Elevate your productivity with Progress Pal, a meticulously crafted task manager application designed to streamline your journey towards achieving your goals. With its sleek design and intuitive user interface, Progress Pal redefines task management, making it an indispensable companion for both personal and professional endeavors.',
                      techStack: 'Tech stack: Flutter, Laravel, MongoDB',
                      onTapGithub: () async {
                        await launchUrl(
                            Uri.parse('https://github.com/muj-i/progress_pal'));
                      },
                      onTapLinkedin: () async {
                        await launchUrl(Uri.parse(
                            'https://www.linkedin.com/posts/muj-i_taskmanagerapp-appdevelopment-getxframwork-activity-7103689900159377408-TUT7/?utm_source=share&utm_medium=member_desktop'));
                      },
                      onTapYoutube: () async {
                        await launchUrl(Uri.parse(
                            'https://youtu.be/TBhSP3-sAiE?si=zuS-vWPbPQlvq_28'));
                      },
                      onTapAndroid: () async {
                        await launchUrl(Uri.parse(
                            'https://github.com/muj-i/progress_pal/releases/download/v1.1.1/Progress.Pal.apk'));
                      },
                    ),
                    ItemCard(
                      itemImage:
                          'https://raw.githubusercontent.com/muj-i/mocks/main/WEATHER.png',
                      itemName: 'W E A T H E R !',
                      itemDescription:
                          'W E A T H E R ! is a simple and intuitive application that allows users to check the current weather conditions for different locations. With a clean and visually appealing interface, users can easily enter a location and get real-time weather information.',
                      techStack: 'Tech stack: Flutter, OpenWeatherMap API',
                      onTapGithub: () async {
                        await launchUrl(Uri.parse(
                            'https://github.com/muj-i/Flutter-Practice/tree/main/Assignments/mod9asgmt'));
                      },
                      onTapYoutube: () async {
                        await launchUrl(Uri.parse(
                            'https://youtu.be/fBMRxnt_rAo?si=7hNcDXnTsAdKOCPf'));
                      },
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
      ],
    );
  }
}
