import 'package:dev_folio/presentation/pages/landscape/models/tech_stack_items.dart';
import 'package:dev_folio/presentation/utils/app_theme.dart';
import 'package:dev_folio/presentation/utils/strtings.dart';
import 'package:dev_folio/presentation/widgets/shader_mas_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class TechStack extends StatelessWidget {
  const TechStack({super.key});

  @override
  Widget build(BuildContext context) {
    TechSdkData techSdkData = TechSdkData();
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
        const SizedBox(height: 50),
        SizedBox(
          height: 400,
          child: GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: Get.width < 700 ? 3 : 8,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: techSdkData.techSdkItems.length,
            itemBuilder: (context, index) {
              return SizedBox(
                  height: 100,
                  width: 100,
                  child: Column(
                    children: [
                      SvgPicture.network(
                        techSdkData.techSdkItems[index].svgImage,
                        height: techSdkData.techSdkItems[index].height ?? 50,
                      ),
                      const SizedBox(height: 10),
                      Text(techSdkData.techSdkItems[index].title),
                    ],
                  ));
            },
          ),
        ),
      ],
    );
  }
}
