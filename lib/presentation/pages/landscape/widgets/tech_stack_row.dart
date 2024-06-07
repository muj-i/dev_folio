import 'package:dev_folio/presentation/models/tech_stack_items.dart';
import 'package:dev_folio/presentation/utils/app_theme.dart';
import 'package:dev_folio/presentation/utils/strtings.dart';
import 'package:dev_folio/presentation/widgets/shader_mask_widget.dart';
import 'package:dev_folio/presentation/widgets/tech_stack_grid.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TechStackRow extends StatelessWidget {
  const TechStackRow({super.key});

  @override
  Widget build(BuildContext context) {
    TechMobileDevData techMobileDevData = TechMobileDevData();
    // TechServerDevData techServerDevData = TechServerDevData();
    // TechDatabaseData techDatabaseData = TechDatabaseData();
    TechProjectManagementData techProjectManagementData =
        TechProjectManagementData();
    TechVersionControlData techVersionControlData = TechVersionControlData();
    TechUIUXData techUIUXData = TechUIUXData();
    TechIDEsAndCodeEditorsData techIDEsAndCodeEditorsData =
        TechIDEsAndCodeEditorsData();

    return Column(
      children: [
        Text(
          AppStrings.myTechStackText,
          style: AppTheme.poppinsTextStyle
              .copyWith(fontSize: 45, fontWeight: FontWeight.bold),
        ),
        ShaderMaskWidget(
          child: Text(
            AppStrings.myWorkingTechnologiesText,
            style: AppTheme.poppinsTextStyle.copyWith(fontSize: 32),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TechStackGridView(
              title: '#Mobile Development',
              techSdkItems: techMobileDevData.items,
            ),
            TechStackGridView(
              title: '#IDEs & Code Editors',
              techSdkItems: techIDEsAndCodeEditorsData.items,
            ),
            TechStackGridView(
              title: '#Version Control',
              techSdkItems: techVersionControlData.items,
            ),
            // TechStackGridView(
            //   title: '#Server Side',
            //   techSdkItems: techServerDevData.items,
            // ),
            // TechStackGridView(
            //   title: '#Database',
            //   techSdkItems: techDatabaseData.items,
            // ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TechStackGridView(
              title: '#Project Management',
              techSdkItems: techProjectManagementData.items,
            ),
            TechStackGridView(
              title: '#UI/UX Design Tools',
              techSdkItems: techUIUXData.items,
            ),
          ],
        ),
      ],
    );
  }
}
