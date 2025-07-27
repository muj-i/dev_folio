import 'package:dev_folio/presentation/pages/landscape/widgets/experience_part.dart';
import 'package:dev_folio/presentation/widgets/item_card.dart';
import 'package:flutter/material.dart';

class Experience2 extends StatelessWidget {
  const Experience2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ExperiencePart(
      text1: 'Flutter Developer',
      text2: 'Code Village,',
      text3: 'Dhaka - 1230, Bangladesh.',
      text4: 'May 2022 - June 2023',
      // urlText: 'codevillage.com.bd',
      // onTap: () async {
      //   await launchUrl(Uri.parse('https://codevillage.com.bd/'));
      // },
      text5:
          '• Developed highly scalable flutter application using Provider state management and REST APIs.',
      text6: '• Worked collaboratively within an agile development team.',
      text7:
          '• Ensured code maintainability and quality by keeping the codebase clean and well-documented.',
      widget: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: ItemCard(
              itemImage:
                  'https://raw.githubusercontent.com/muj-i/mocks/main/company_mocs/code-vill/makan.png',
              itemName: 'MyMakan',
              itemDescription:
                  'MyMakan is a real state app that helps you find the perfect place to live. It provides a wide range of properties to buy, rent, or share.',
              techStack: 'Tech stack: Flutter, Firebase, Nest.js, MongoDB',
              isCompanyProject: true,
            ),
          ),
          Expanded(
            child: ItemCard(
              itemImage:
                  'https://raw.githubusercontent.com/muj-i/mocks/main/company_mocs/code-vill/tv.png',
              itemName: 'TheTV',
              itemDescription:
                  'A TV app that provides live streaming of various TV channels. It also has a feature to watch missed programs.',
              techStack: 'Tech stack: Flutter, Firebase, Laravel...',
              isCompanyProject: true,
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 300,
              width: 300,
            ),
          ),
        ],
      ),
    );
  }
}
