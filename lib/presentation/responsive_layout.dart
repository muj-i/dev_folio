import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget portraitView;
  final Widget landscapeView;

  const ResponsiveLayout(
      {super.key, required this.portraitView, required this.landscapeView});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 700) {
          return portraitView;
        } else {
          return landscapeView;
        }
      },
    );
  }
}
