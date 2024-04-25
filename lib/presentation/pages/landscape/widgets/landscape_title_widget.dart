import 'package:dev_folio/presentation/utils/app_colors.dart';
import 'package:flutter/material.dart';

class LandscapeTitleWidget extends StatelessWidget {
  const LandscapeTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcATop,
      shaderCallback: (Rect bounds) {
        return const LinearGradient(
          colors: [AppColors.blue, AppColors.primary],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          tileMode: TileMode.clamp,
        ).createShader(bounds);
      },
      child: const Text('{muj.i}',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            wordSpacing: 5.0,
          )),
    );
  }
}
