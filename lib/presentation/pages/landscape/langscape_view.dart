import 'package:dev_folio/presentation/pages/landscape/widgets/details_part.dart';
import 'package:dev_folio/presentation/pages/landscape/widgets/experience_part.dart';
import 'package:dev_folio/presentation/pages/landscape/widgets/projects_part.dart';
import 'package:dev_folio/presentation/pages/landscape/widgets/tech_stack_row.dart';
import 'package:dev_folio/presentation/utils/strtings.dart';
import 'package:dev_folio/presentation/widgets/shader_mas_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class LandscapeView extends StatelessWidget {
  const LandscapeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: AppBar(
            title: const ShaderMaskWidget(
              child: Text(AppStrings.userName,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    wordSpacing: 5.0,
                  )),
            ),
            actions: [
              TextButton(onPressed: () {}, child: const Text(AppStrings.home)),
              TextButton(onPressed: () {}, child: const Text(AppStrings.about)),
              TextButton(
                  onPressed: () {}, child: const Text(AppStrings.techStack)),
              TextButton(
                  onPressed: () {}, child: const Text(AppStrings.projects)),
              TextButton(
                  onPressed: () {}, child: const Text(AppStrings.contact)),
              const SizedBox(width: 10),
              IconButton(
                  onPressed: () async {
                    await launchUrl(Uri.parse('https://github.com/muj-i'));
                  },
                  icon: const Icon(FontAwesomeIcons.squareGithub)),
              const SizedBox(width: 2),
              IconButton(
                  onPressed: () async {
                    await launchUrl(
                        Uri.parse('https://www.linkedin.com/in/muj-i/'));
                  },
                  icon: const Icon(FontAwesomeIcons.linkedin)),

              // IconButton(onPressed: () {}, icon: const Icon(FontAwesomeIcons.earth)),
            ],
          ),
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            children: [
              SizedBox(height: 150),
              DetailsPart(),
              SizedBox(height: 150),
              TechStackRow(),
              SizedBox(height: 100),
              ExperiencePart(),
              SizedBox(height: 100),
              ProjectPart(),
            ],
          ),
        ),
      ),
    );
  }
}
