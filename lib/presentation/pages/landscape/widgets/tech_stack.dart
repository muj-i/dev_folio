import 'package:dev_folio/presentation/pages/landscape/models/tech_stack_items.dart';
import 'package:dev_folio/presentation/utils/app_theme.dart';
import 'package:dev_folio/presentation/utils/strtings.dart';
import 'package:dev_folio/presentation/widgets/shader_mas_widget.dart';
import 'package:dev_folio/presentation/widgets/tech_stack_grid.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TechStack extends StatelessWidget {
  const TechStack({super.key});

  @override
  Widget build(BuildContext context) {
    TechLanguagesData techLanguagesData = TechLanguagesData();
    TechFrameworksData techFrameworksData = TechFrameworksData();
    TechToolsAndPlatformsData techToolsAndPlatformsData =
        TechToolsAndPlatformsData();
    TechCloudServicesData techCloudServicesData = TechCloudServicesData();
    TechVersionControlAndCICDData techVersionControlAndCICDData =
        TechVersionControlAndCICDData();
    TechIDEsAndCodeEditorsData techIDEsAndCodeEditorsData =
        TechIDEsAndCodeEditorsData();
    Tech3rdPartyCommunicationSdksData tech3rdPartyCommunicationSdksData =
        Tech3rdPartyCommunicationSdksData();
    TechProjectManagementToolsData techProjectManagementToolsData =
        TechProjectManagementToolsData();

    return Column(
      children: [
        Text(
          AppStrings.myTechStackText,
          style: AppTheme.poppinsTextStyle
              .copyWith(fontSize: 48, fontWeight: FontWeight.bold),
        ),
        ShaderMaskWidget(
          child: Text(
            AppStrings.myWorkingTechnologiesText,
            style: AppTheme.poppinsTextStyle.copyWith(fontSize: 32),
          ),
        ),
        TechStackGridView(
          title: '#Programming Languages',
          techSdkItems: techLanguagesData.items,
        ),
        TechStackGridView(
          title: '#Frameworks',
          techSdkItems: techFrameworksData.items,
        ),
        TechStackGridView(
          title: '#Tools & Platforms',
          techSdkItems: techToolsAndPlatformsData.items,
        ),
        TechStackGridView(
          title: '#Cloud Services',
          techSdkItems: techCloudServicesData.items,
        ),
        TechStackGridView(
          title: '#Version Control & CI/CD',
          techSdkItems: techVersionControlAndCICDData.items,
        ),
        TechStackGridView(
          title: '#IDEs & Code Editors',
          techSdkItems: techIDEsAndCodeEditorsData.items,
        ),
        TechStackGridView(
          title: '#3rd Party Communication SDKs',
          techSdkItems: tech3rdPartyCommunicationSdksData.items,
        ),
        TechStackGridView(
          title: '#Project Management Tools',
          techSdkItems: techProjectManagementToolsData.items,
        ),
      ],
    );
  }
}
