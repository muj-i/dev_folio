import 'package:dev_folio/presentation/utils/app_theme.dart';
import 'package:dev_folio/presentation/utils/strtings.dart';
import 'package:dev_folio/presentation/widgets/project_card.dart';
import 'package:flutter/material.dart';

class ProjectPart extends StatelessWidget {
  const ProjectPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Text(
            AppStrings.projects,
            style: AppTheme.poppinsTextStyle
                .copyWith(fontSize: 48, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ProjectCard(
              projectName: 'CraftyBay',
              projectDescription:
                  'CraftyBay is a feature-rich ecommerce app designed to provide users with a seamless and enjoyable shopping experience. With a focus on user-friendliness and a wide range of products, CraftyBay allows users to explore, purchase, and review products with ease.',
              techStack: 'Tech stack: Flutter, Laravel, MySQL',
              onTapGithub: () {},
              onTapYoutube: () {},
            ),
            ProjectCard(
              projectName: 'ProgressPal',
              projectDescription: '',
              techStack: 'Tech stack: Flutter, Laravel, MongoDB',
              onTapGithub: () {},
              onTapYoutube: () {},
            ),
            ProjectCard(
              projectName: 'W E A T H E R !',
              projectDescription: '',
              techStack: 'Tech stack: Flutter, OpenWeatherMap API',
              onTapGithub: () {},
              onTapYoutube: () {},
            )
          ],
        )
      ],
    );
  }
}
