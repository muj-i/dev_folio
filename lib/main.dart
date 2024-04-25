import 'package:dev_folio/presentation/pages/landscape/langscape_view.dart';
import 'package:dev_folio/presentation/pages/portrait_view.dart';
import 'package:dev_folio/presentation/responsive_layout.dart';
import 'package:dev_folio/presentation/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Muj's Dev Folio",
      debugShowCheckedModeBanner: false,
      home: const ResponsiveLayout(
        portraitView: PortraitView(),
        landscapeView: LandscapeView(),
      ),
      themeMode: ThemeMode.light,
      theme: AppTheme.appLightTheme,
      darkTheme: AppTheme.appDarkTheme,
    ),
  );
}
