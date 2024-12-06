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
      crossAxisAlignment: Get.width < 700
          ? CrossAxisAlignment.center
          : CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 30),
        Text(
          title,
          style: AppTheme.poppinsTextStyle.copyWith(fontSize: 20),
        ),
        const SizedBox(height: 30),
        SizedBox(
          height: 120,
          child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: techSdkItems.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    SvgPicture.network(
                      techSdkItems[index].svgImage,
                      height: techSdkItems[index].height ?? 50,
                    ),
                    const SizedBox(height: 10),
                    Text(techSdkItems[index].title),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
