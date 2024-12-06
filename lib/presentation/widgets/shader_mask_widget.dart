import 'package:dev_folio/presentation/utils/app_colors.dart';
import 'package:flutter/material.dart';

class ShaderMaskWidget extends StatelessWidget {
  const ShaderMaskWidget({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return ShaderMask(
        blendMode: BlendMode.srcATop,
        shaderCallback: (Rect bounds) {
          return const LinearGradient(
            colors: [AppColors.yellow, AppColors.green],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            tileMode: TileMode.clamp,
          ).createShader(bounds);
        },
        child: child);
  }
}
