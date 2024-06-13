import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget portraitView;
  final Widget landscapeView;

  const ResponsiveLayout(
      {super.key, required this.portraitView, required this.landscapeView});

  static RxBool isLoading = false.obs;
  showLoader() {
    isLoading.value = true;
    Future.delayed(const Duration(milliseconds: 500), () {
      isLoading.value = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    showLoader();
    return Obx(() {
      return isLoading.value
          ? Center(
              child: CircularProgressIndicator(
              valueColor:
                  AlwaysStoppedAnimation<Color>(Colors.black.withOpacity(.5)),
            ))
          : LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth < 700) {
                  return portraitView;
                } else {
                  return landscapeView;
                }
              },
            );
    });
  }
}
