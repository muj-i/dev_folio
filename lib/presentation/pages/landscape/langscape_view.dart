import 'package:dev_folio/presentation/pages/landscape/widgets/details_part.dart';
import 'package:dev_folio/presentation/pages/landscape/widgets/tech_stack.dart';
import 'package:dev_folio/presentation/utils/strtings.dart';
import 'package:dev_folio/presentation/widgets/shader_mas_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LandscapeView extends StatelessWidget {
  const LandscapeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Scaffold(
          appBar: AppBar(
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
                  onPressed: () {},
                  icon: const Icon(FontAwesomeIcons.squareGithub)),
              const SizedBox(width: 2),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(FontAwesomeIcons.linkedin)),

              // IconButton(onPressed: () {}, icon: const Icon(FontAwesomeIcons.earth)),
            ],
          ),
          body: const SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 150),
                DetailsPart(),
                SizedBox(height: 150),
                TechStack(),
              ],
            ),
          )),
    );
  }
}
