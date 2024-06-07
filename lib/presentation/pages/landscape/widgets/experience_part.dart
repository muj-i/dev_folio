import 'package:dev_folio/presentation/utils/app_colors.dart';
import 'package:dev_folio/presentation/utils/app_theme.dart';
import 'package:dev_folio/presentation/utils/strtings.dart';
import 'package:dev_folio/presentation/widgets/item_card.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ExperiencePart1 extends StatelessWidget {
  const ExperiencePart1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            AppStrings.workExperienceText,
            style: AppTheme.poppinsTextStyle
                .copyWith(fontSize: 45, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 20),
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                AppColors.yellow.withOpacity(.05),
                AppColors.red.withOpacity(.4)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Flutter Developer',
                        style: AppTheme.poppinsTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: AppColors.black,
                        ),
                      ),
                      Text(
                        'Bringin Technologies Limited,',
                        style: AppTheme.poppinsTextStyle.copyWith(
                          fontSize: 18,
                          color: AppColors.black,
                        ),
                      ),
                      Text(
                        'Dhaka, Bangladesh.',
                        style: AppTheme.poppinsTextStyle.copyWith(
                          fontSize: 18,
                          color: AppColors.black,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'June 2023 - Present',
                        style: AppTheme.poppinsTextStyle.copyWith(
                          fontSize: 18,
                          color: AppColors.black,
                        ),
                      ),
                      // InkWell(
                      //   onTap: () async {
                      //     await launchUrl(Uri.parse(
                      //         'https://www.icloud.com/iclouddrive/09cUao7OHItu4-OVeimpdsMzA#Experience_Letter'));
                      //   },
                      //   child: Text(
                      //     'Letter of Experience.',
                      //     style: AppTheme.poppinsTextStyle.copyWith(
                      //         fontSize: 18,
                      //         color: AppColors.blue,
                      //         decoration: TextDecoration.underline,
                      //         decorationColor: AppColors.blue),
                      //   ),
                      // ),
                      InkWell(
                        onTap: () async {
                          await launchUrl(Uri.parse('https://getfit.com.bd/'));
                        },
                        child: Text(
                          'Visit Website.',
                          style: AppTheme.poppinsTextStyle.copyWith(
                              fontSize: 18,
                              color: AppColors.blue,
                              decoration: TextDecoration.underline,
                              decorationColor: AppColors.blue),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 20),
              Text(
                'Responsibilities:',
                style: AppTheme.poppinsTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColors.black,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                '• Designed and developed highly scalable features using GetX state management and REST APIs.',
                style: AppTheme.poppinsTextStyle.copyWith(
                  fontSize: 16,
                  color: AppColors.black,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                '• Optimized app performance through code refactoring and efficient use of Socket.io for real-time updates.',
                style: AppTheme.poppinsTextStyle.copyWith(
                  fontSize: 16,
                  color: AppColors.black,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                '• Successfully implemented Agora SDK for in-app voice and video calling, enhancing user engagement.',
                style: AppTheme.poppinsTextStyle.copyWith(
                  fontSize: 16,
                  color: AppColors.black,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                '• Collaborated effectively within an Agile development team, adhering to CI/CD practices.',
                style: AppTheme.poppinsTextStyle.copyWith(
                  fontSize: 16,
                  color: AppColors.black,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                '• Maintained clean and well-documented code, ensuring maintainability and code quality.',
                style: AppTheme.poppinsTextStyle.copyWith(
                  fontSize: 16,
                  color: AppColors.black,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Contributions:',
                style: AppTheme.poppinsTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColors.black,
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ItemCard(
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
                  ),
                  Expanded(
                    child: ItemCard(
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
                  ),
                  Expanded(
                    child: ItemCard(
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
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ExperiencePart2 extends StatelessWidget {
  const ExperiencePart2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.yellow.withOpacity(.05),
            AppColors.red.withOpacity(.4)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Flutter Developer',
                    style: AppTheme.poppinsTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppColors.black,
                    ),
                  ),
                  Text(
                    'Code Village,',
                    style: AppTheme.poppinsTextStyle.copyWith(
                      fontSize: 18,
                      color: AppColors.black,
                    ),
                  ),
                  Text(
                    'Dhaka - 1230, Bangladesh.',
                    style: AppTheme.poppinsTextStyle.copyWith(
                      fontSize: 18,
                      color: AppColors.black,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'May 2022 - June 2023',
                    style: AppTheme.poppinsTextStyle.copyWith(
                      fontSize: 18,
                      color: AppColors.black,
                    ),
                  ),
                  // InkWell(
                  //   onTap: () async {
                  //     await launchUrl(Uri.parse(
                  //         'https://www.icloud.com/iclouddrive/09cUao7OHItu4-OVeimpdsMzA#Experience_Letter'));
                  //   },
                  //   child: Text(
                  //     'Letter of Experience.',
                  //     style: AppTheme.poppinsTextStyle.copyWith(
                  //         fontSize: 18,
                  //         color: AppColors.blue,
                  //         decoration: TextDecoration.underline,
                  //         decorationColor: AppColors.blue),
                  //   ),
                  // ),
                  InkWell(
                    onTap: () async {
                      await launchUrl(Uri.parse('https://codevillage.com.bd/'));
                    },
                    child: Text(
                      'Visit Website.',
                      style: AppTheme.poppinsTextStyle.copyWith(
                          fontSize: 18,
                          color: AppColors.blue,
                          decoration: TextDecoration.underline,
                          decorationColor: AppColors.blue),
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 20),
          Text(
            'Responsibilities:',
            style: AppTheme.poppinsTextStyle.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppColors.black,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            '• Developed highly scalable flutter application using Provider state management and REST APIs.',
            style: AppTheme.poppinsTextStyle.copyWith(
              fontSize: 16,
              color: AppColors.black,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            '• Worked collaboratively within an agile development team.',
            style: AppTheme.poppinsTextStyle.copyWith(
              fontSize: 16,
              color: AppColors.black,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            '• Ensured code maintainability and quality by keeping the codebase clean and well-documented.',
            style: AppTheme.poppinsTextStyle.copyWith(
              fontSize: 16,
              color: AppColors.black,
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
