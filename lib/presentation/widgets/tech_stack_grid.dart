import 'package:dev_folio/presentation/models/tech_stack_model.dart';
import 'package:dev_folio/presentation/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class TechStackGridView extends StatelessWidget {
  const TechStackGridView(
      {super.key, required this.title, required this.techSdkItems});
  final String title;

  final List<TechStackModel> techSdkItems;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30),
        Text(
          title,
          style: AppTheme.poppinsTextStyle.copyWith(fontSize: 20),
        ),
        const SizedBox(height: 30),
        SizedBox(
          height: Get.width < 700 ? 100: 300,
          child: GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: Get.width < 700 ? 4 : 8,
              crossAxisSpacing: Get.width < 700 ? 5 : 1,
              // mainAxisSpacing: Get.width < 900 ? 5 : 0,
            ),
            itemCount: techSdkItems.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  SvgPicture.network(
                    techSdkItems[index].svgImage,
                    height: techSdkItems[index].height ?? 50,
                  ),
                  const SizedBox(height: 10),
                  Text(techSdkItems[index].title),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
