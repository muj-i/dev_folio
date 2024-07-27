import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResponsiveLayout extends StatefulWidget {
  final Widget portraitView;
  final Widget landscapeView;

  const ResponsiveLayout(
      {super.key, required this.portraitView, required this.landscapeView});

  static RxBool isLoading = true.obs;

  @override
  State<ResponsiveLayout> createState() => _ResponsiveLayoutState();
}

class _ResponsiveLayoutState extends State<ResponsiveLayout> {
  showLoader() {
    Future.delayed(const Duration(milliseconds: 500), () {
      ResponsiveLayout.isLoading.value = false;
    });
  }

  @override
  void initState() {
    showLoader();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return ResponsiveLayout.isLoading.value
          ? Scaffold(
            body: Center(
                child: CircularProgressIndicator(
                valueColor:
                    AlwaysStoppedAnimation<Color>(Colors.black.withOpacity(.5)),
              )),
          )
          : LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth < 700) {
                  return widget.portraitView;
                } else {
                  return widget.landscapeView;
                }
              },
            );
    });
  }
}
