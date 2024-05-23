import 'package:dev_folio/presentation/utils/app_assets.dart';
import 'package:dev_folio/presentation/utils/app_colors.dart';
import 'package:flutter/material.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard(
      {super.key,
      this.projectImage,
      this.projectName,
      this.projectDescription,
      this.techStack,
      this.appStoreLink,
      this.playStoreLink,
      this.isCompanyProject = false,
      this.onTapAppStore,
      this.onTapPlayStore});
  final String? projectImage;
  final String? projectName;
  final String? projectDescription;
  final String? techStack;
  final String? appStoreLink;
  final String? playStoreLink;
  final bool? isCompanyProject;
  final VoidCallback? onTapAppStore;
  final VoidCallback? onTapPlayStore;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image.asset(name),
            // const SizedBox(height: 20),
            Text(
              projectName ?? '',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              projectDescription ?? '',
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              techStack ?? '',
              style: const TextStyle(
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 10),
            isCompanyProject == true
                ? Row(
                    children: [
                      const Text(
                        'Preview',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(width: 7),
                      const Icon(Icons.link),
                      const SizedBox(width: 10),
                      InkWell(
                        onTap: onTapAppStore,
                        child: Image.asset(
                          AppAssets.appStoreLogo,
                          height: 20,
                        ),
                      ),
                      const SizedBox(width: 10),
                      InkWell(
                        onTap: onTapPlayStore,
                        child: Image.asset(
                          AppAssets.playStoreLogo,
                          height: 20,
                        ),
                      ),
                    ],
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
