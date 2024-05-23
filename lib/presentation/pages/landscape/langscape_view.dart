import 'package:dev_folio/presentation/pages/landscape/widgets/about_me.dart';
import 'package:dev_folio/presentation/pages/landscape/widgets/contact_me.dart';
import 'package:dev_folio/presentation/pages/landscape/widgets/details_part.dart';
import 'package:dev_folio/presentation/pages/landscape/widgets/experience_part.dart';
import 'package:dev_folio/presentation/pages/landscape/widgets/projects_part.dart';
import 'package:dev_folio/presentation/pages/landscape/widgets/tech_stack_row.dart';
import 'package:dev_folio/presentation/utils/app_theme.dart';
import 'package:dev_folio/presentation/utils/strtings.dart';
import 'package:dev_folio/presentation/widgets/shader_mas_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class LandscapeView extends StatefulWidget {
  const LandscapeView({super.key});

  @override
  State<LandscapeView> createState() => _LandscapeViewState();
}

class _LandscapeViewState extends State<LandscapeView> {
  final ScrollController _scrollController = ScrollController();
  final GlobalKey _sectionDetailPartKey = GlobalKey();
  final GlobalKey _sectionTechStackRowKey = GlobalKey();
  final GlobalKey _sectionExperienceKey = GlobalKey();
  final GlobalKey _sectionProjectsKey = GlobalKey();
  final GlobalKey _sectionAbouttMeKey = GlobalKey();
  final GlobalKey _sectionContactMeKey = GlobalKey();

  void scrollToSection(GlobalKey key) {
    Scrollable.ensureVisible(key.currentContext!,
        duration: const Duration(microseconds: 1));
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  initState() {
    super.initState();
    Future.delayed(
      const Duration(milliseconds: 500),
      () => scrollToSection(_sectionAbouttMeKey),
    );
  }

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
              TextButton(
                  onPressed: () {
                    scrollToSection(_sectionDetailPartKey);
                  },
                  child: const Text(AppStrings.home)),
              TextButton(
                  onPressed: () {
                    scrollToSection(_sectionAbouttMeKey);
                  },
                  child: const Text(AppStrings.about)),
              TextButton(
                  onPressed: () {
                    scrollToSection(_sectionTechStackRowKey);
                  },
                  child: const Text(AppStrings.techStack)),
              TextButton(
                  onPressed: () {
                    scrollToSection(_sectionExperienceKey);
                  },
                  child: const Text(AppStrings.experience)),
              TextButton(
                  onPressed: () {
                    scrollToSection(_sectionProjectsKey);
                  },
                  child: const Text(AppStrings.projects)),
              TextButton(
                  onPressed: () {
                    scrollToSection(_sectionContactMeKey);
                  },
                  child: const Text(AppStrings.contact)),
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
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            children: [
              const SizedBox(height: 150),
              Container(
                key: _sectionDetailPartKey,
                child: const DetailsPart(),
              ),
              const SizedBox(height: 150),
              Container(
                key: _sectionTechStackRowKey,
                child: const TechStackRow(),
              ),
              const SizedBox(height: 100),
              Container(
                key: _sectionExperienceKey,
                child: const ExperiencePart(),
              ),
              const SizedBox(height: 100),
              Container(
                key: _sectionProjectsKey,
                child: const ProjectsPart(),
              ),
              const SizedBox(height: 100),
              Container(
                key: _sectionAbouttMeKey,
                child: const AboutMe(),
              ),
              const SizedBox(height: 100),
              Container(
                key: _sectionContactMeKey,
                child: const ContactMe(),
              ),
              const SizedBox(height: 50),
              bottomButtonPortion(context),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  Row bottomButtonPortion(BuildContext context) {
    return Row(
      children: [
        TextButton(
            onPressed: () {
              scrollToSection(_sectionDetailPartKey);
            },
            child: const Text(AppStrings.home)),
        TextButton(
            onPressed: () {
              scrollToSection(_sectionAbouttMeKey);
            },
            child: const Text(AppStrings.about)),
        TextButton(
            onPressed: () {
              scrollToSection(_sectionTechStackRowKey);
            },
            child: const Text(AppStrings.techStack)),
        TextButton(
            onPressed: () {
              scrollToSection(_sectionExperienceKey);
            },
            child: const Text(AppStrings.experience)),
        TextButton(
            onPressed: () {
              scrollToSection(_sectionProjectsKey);
            },
            child: const Text(AppStrings.projects)),
        TextButton(
            onPressed: () {
              scrollToSection(_sectionContactMeKey);
            },
            child: const Text(AppStrings.contact)),
        const Spacer(),
        MediaQuery.of(context).size.width > 1100
            ? Row(
                children: [
                  Text('Designed by',
                      style: AppTheme.aBeeZeeTextStyle.copyWith(fontSize: 16)),
                  ShaderMaskWidget(
                    child: Text(' Pavan MG',
                        style:
                            AppTheme.aBeeZeeTextStyle.copyWith(fontSize: 16)),
                  ),
                  Text(' & Developed by',
                      style: AppTheme.aBeeZeeTextStyle.copyWith(fontSize: 16)),
                  ShaderMaskWidget(
                    child: Text(' Mujahidul Islam',
                        style:
                            AppTheme.aBeeZeeTextStyle.copyWith(fontSize: 16)),
                  ),
                  Text(' With ❤️',
                      style: AppTheme.aBeeZeeTextStyle.copyWith(fontSize: 16)),
                ],
              )
            : const SizedBox(),
      ],
    );
  }
}
