import 'package:dev_folio/presentation/pages/landscape/widgets/landscape_title_widget.dart';
import 'package:dev_folio/presentation/utils/app_gif_assets.dart';
import 'package:dev_folio/presentation/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LandscapeView extends StatelessWidget {
  const LandscapeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const LandscapeTitleWidget(),
          actions: [
            TextButton(onPressed: () {}, child: const Text("Home")),
            TextButton(onPressed: () {}, child: const Text("About")),
            TextButton(onPressed: () {}, child: const Text("Tech Stack")),
            TextButton(onPressed: () {}, child: const Text("Projects")),
            TextButton(onPressed: () {}, child: const Text("Contact")),
            const SizedBox(width: 10),
            IconButton(
                onPressed: () {},
                icon: const Icon(FontAwesomeIcons.squareGithub)),
            const SizedBox(width: 2),
            IconButton(
                onPressed: () {}, icon: const Icon(FontAwesomeIcons.linkedin)),

            // IconButton(onPressed: () {}, icon: const Icon(FontAwesomeIcons.earth)),
            const SizedBox(width: 50),
          ],
        ),
        body: Column(
          children: [
            Row(
              children: [
                Text(
                  'Landscape View',
                  style: AppTheme.poppinsTextStyle.copyWith(fontSize: 30),
                ),
                Image.asset(AppGifAssets.hiGif)
              ],
            ),
          ],
        ));
  }
}
