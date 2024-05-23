import 'package:dev_folio/presentation/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

class SeeMoreShadow extends StatelessWidget {
  const SeeMoreShadow(
      {super.key,
      required this.isShowMoreEnabled,
      required this.height,
      required this.buttonTop});
  final RxBool isShowMoreEnabled;
  final double height;
  final double buttonTop;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColors.white.withOpacity(0.0),
                AppColors.white.withOpacity(0.2),
                AppColors.white.withOpacity(0.8),
                AppColors.white,
              ],
            ),
          ),
        ),
        Positioned(
          top: buttonTop,
          left: 0,
          right: 0,
          child: Center(
            child: OutlinedButton(
              onPressed: () {
                isShowMoreEnabled.value = true;
              },
              child: const Text('See More'),
            ),
          ),
        )
      ],
    );
  }
}
