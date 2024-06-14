import 'package:cached_network_image/cached_network_image.dart';
import 'package:dev_folio/presentation/pages/portrait/widgets/portait_professional_traings.dart';
import 'package:dev_folio/presentation/pages/portrait/widgets/portrait_contact_me.dart';
import 'package:dev_folio/presentation/pages/portrait/widgets/portrait_details_part.dart';
import 'package:dev_folio/presentation/pages/portrait/widgets/portrait_experience_part.dart';
import 'package:dev_folio/presentation/pages/portrait/widgets/portrait_projects_part.dart';
import 'package:dev_folio/presentation/pages/portrait/widgets/tech_stack_column.dart';
import 'package:dev_folio/presentation/utils/app_assets.dart';
import 'package:dev_folio/presentation/utils/app_colors.dart';
import 'package:dev_folio/presentation/utils/strtings.dart';
import 'package:dev_folio/presentation/widgets/about_me.dart';
import 'package:dev_folio/presentation/widgets/shader_mask_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class PortraitView extends StatefulWidget {
  const PortraitView({super.key});

  @override
  State<PortraitView> createState() => _PortraitViewState();
}

class _PortraitViewState extends State<PortraitView> {
  final ScrollController _scrollController = ScrollController();
  final GlobalKey _sectionDetailPartKey = GlobalKey();
  final GlobalKey _sectionTechStackRowKey = GlobalKey();
  final GlobalKey _sectionExperienceKey = GlobalKey();
  final GlobalKey _sectionProjectsKey = GlobalKey();
  final GlobalKey _sectionProfessionalTraingKey = GlobalKey();
  final GlobalKey _sectionAbouttMeKey = GlobalKey();
  final GlobalKey _sectionContactMeKey = GlobalKey();

  void scrollToSection(GlobalKey key) {
    Get.back();
    Scrollable.ensureVisible(key.currentContext!,
        duration: const Duration(microseconds: 1));
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: appBar(),
      ),
      drawer: drawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 60),
              Container(
                key: _sectionDetailPartKey,
                child: const PortraitDetailsPart(),
              ),
              const SizedBox(height: 100),
              Container(
                key: _sectionTechStackRowKey,
                child: const TechStackColumn(),
              ),
              const SizedBox(height: 100),
              Container(
                key: _sectionExperienceKey,
                child: const Column(
                  children: [
                    PortraitExperiencePart1(),
                    SizedBox(height: 20),
                    PortraitExperiencePart2(),
                  ],
                ),
              ),
              const SizedBox(height: 100),
              Container(
                key: _sectionProjectsKey,
                child: const PortraitProjectsPart(),
              ),
              const SizedBox(height: 100),
              Container(
                key: _sectionProfessionalTraingKey,
                child: const PortraitProfessionalTraing(),
              ),
              const SizedBox(height: 100),
              Container(
                key: _sectionAbouttMeKey,
                child: const AboutMe(),
              ),
              const SizedBox(height: 100),
              Container(
                key: _sectionContactMeKey,
                child: const PortraitContactMe(),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  Drawer drawer() {
    return Drawer(
      width: 180,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(topRight: Radius.circular(10)),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(500),
                gradient: const LinearGradient(
                  colors: [AppColors.yellow, AppColors.red],
                  begin: Alignment.topCenter,
                  end: Alignment.centerRight,
                  tileMode: TileMode.clamp,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(500),
                child: CachedNetworkImage(
                  imageUrl: AppAssets.me6Img,
                  height: 90,
                  width: 90,
                  fit: BoxFit.cover,
                  placeholder: (context, url) => CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(
                        AppColors.black.withOpacity(.4)),
                  ),
                  errorWidget: (context, url, error) =>
                      Image.asset(AppAssets.me4Img),
                ),
              ),
            ),
            // Image.asset(AppAssets.me4Img, height: 90),
            const SizedBox(height: 10),
            const ShaderMaskWidget(
              child: Text(AppStrings.userName,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      wordSpacing: 5.0,
                      fontSize: 23)),
            ),
            const SizedBox(height: 20),
            ListTile(
              title: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 2),
                    child: Icon(FontAwesomeIcons.house, size: 18),
                  ),
                  SizedBox(width: 10),
                  Text(AppStrings.home, style: TextStyle(fontSize: 18)),
                ],
              ),
              onTap: () {
                scrollToSection(_sectionDetailPartKey);
              },
            ),
            ListTile(
              title: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 2),
                    child: Icon(FontAwesomeIcons.code, size: 18),
                  ),
                  SizedBox(width: 10),
                  Text(AppStrings.techStack, style: TextStyle(fontSize: 18)),
                ],
              ),
              onTap: () {
                scrollToSection(_sectionTechStackRowKey);
              },
            ),
            ListTile(
              title: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 2),
                    child: Icon(FontAwesomeIcons.briefcase, size: 18),
                  ),
                  SizedBox(width: 10),
                  Text(AppStrings.experience, style: TextStyle(fontSize: 18)),
                ],
              ),
              onTap: () {
                scrollToSection(_sectionExperienceKey);
              },
            ),
            ListTile(
              title: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 2),
                    child: Icon(FontAwesomeIcons.diagramProject, size: 18),
                  ),
                  SizedBox(width: 10),
                  Text(AppStrings.projects, style: TextStyle(fontSize: 18)),
                ],
              ),
              onTap: () {
                scrollToSection(_sectionProjectsKey);
              },
            ),
            ListTile(
              title: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 0),
                    child: Icon(FontAwesomeIcons.chalkboardUser, size: 18),
                  ),
                  SizedBox(width: 10),
                  Text(AppStrings.professionalTraining,
                      style: TextStyle(fontSize: 18)),
                ],
              ),
              onTap: () {
                scrollToSection(_sectionProfessionalTraingKey);
              },
            ),
            ListTile(
              title: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 2),
                    child: Icon(FontAwesomeIcons.solidUser, size: 18),
                  ),
                  SizedBox(width: 10),
                  Text(AppStrings.about, style: TextStyle(fontSize: 18)),
                ],
              ),
              onTap: () {
                scrollToSection(_sectionAbouttMeKey);
              },
            ),
            ListTile(
              title: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 1),
                    child: Icon(FontAwesomeIcons.solidAddressCard, size: 18),
                  ),
                  SizedBox(width: 10),
                  Text(AppStrings.contact, style: TextStyle(fontSize: 18)),
                ],
              ),
              onTap: () {
                scrollToSection(_sectionContactMeKey);
              },
            ),
          ],
        ),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: const ShaderMaskWidget(
        child: Text(AppStrings.userName,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              wordSpacing: 5.0,
            )),
      ),
      actions: [
        IconButton(
            onPressed: () async {
              await launchUrl(Uri.parse('https://github.com/muj-i'));
            },
            icon: const Icon(FontAwesomeIcons.squareGithub)),
        const SizedBox(width: 2),
        IconButton(
            onPressed: () async {
              await launchUrl(Uri.parse('https://www.linkedin.com/in/muj-i/'));
            },
            icon: const Icon(FontAwesomeIcons.linkedin)),
        const SizedBox(width: 10),
      ],
    );
  }
}
